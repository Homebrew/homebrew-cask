cask "bluewallet" do
  version "7.0.6"
  sha256 "0596359068e2ce1e2c0234539b61a2a430a560679b6e4118a0115cc64d83c21d"

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
