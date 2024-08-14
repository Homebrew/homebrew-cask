cask "quiet" do
  version "2.3.0"
  sha256 "8d15bbf0092a0d16542820f9c47ae1acb028f9639ab9d1ffb8b1a557127aef98"

  url "https://github.com/TryQuiet/quiet/releases/download/@quiet/desktop@#{version}/Quiet-#{version}.dmg",
      verified: "github.com/TryQuiet/quiet/"
  name "Quiet"
  desc "Private, p2p alternative to Slack and Discord built on Tor & IPFS"
  homepage "https://tryquiet.org/"

  # Upstream creates GitHub releases for both stable and alpha versions for
  # both desktop and mobile versions, so it is necessary to check recent
  # releases to match the latest stable desktop version.
  livecheck do
    url :url
    regex(%r{^@quiet/desktop@(\d+(?:\.\d+)+)$}i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Quiet.app"

  zap trash: "~/Library/Application Support/Quiet2"

  caveats do
    requires_rosetta
  end
end
