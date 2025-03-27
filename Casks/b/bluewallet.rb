cask "bluewallet" do
  version "7.1.5"
  sha256 "88f21cd8965fb2f27ad6a9dedc0c2effd4f6e717a70e3666a5a2b0336307824e"

  url "https://github.com/BlueWallet/BlueWallet/releases/download/v#{version}/BlueWallet.#{version}.dmg",
      verified: "github.com/BlueWallet/BlueWallet/"
  name "BlueWallet"
  desc "Bitcoin wallet and Lightning wallet"
  homepage "https://bluewallet.io/"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^BlueWallet[._-]v?(\d+(?:\.\d+)+)\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  depends_on macos: ">= :big_sur"

  app "BlueWallet.app"

  zap trash: [
    "~/Library/Application Scripts/io.bluewallet.bluewallet",
    "~/Library/Containers/io.bluewallet.bluewallet",
    "~/Library/Group Containers/group.io.bluewallet.bluewallet",
  ]
end
