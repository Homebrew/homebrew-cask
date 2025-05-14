cask "finicky" do
  version "4.0.0"
  sha256 "f6d4d184c98574dacb5d564f41892fea8a82cbaf2851c5dcaca730168a0a9e2a"

  url "https://github.com/johnste/finicky/releases/download/v#{version}/Finicky.dmg"
  name "Finicky"
  desc "Utility for customizing which browser to start"
  homepage "https://github.com/johnste/finicky"

  # The v4.0.0 release was flagged as a pre-release to avoid unattended auto-updates for old clients.
  # Once the version is marked as stable the livecheck must be reverted to the standard github_releases strategy.
  # An audit exception is set to allow pre-release versions, this will need to be removed as well.
  livecheck do
    url :url
    regex(/^\D*?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :monterey"

  app "Finicky.app"

  zap trash: "~/Library/Preferences/net.kassett.finicky.plist"
end
