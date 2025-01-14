cask "magrit" do
  version "2.2.0"
  sha256 "ec9a59be415be1b31b69a8e4930375240a7974e89e3fed505f02c5f1648e6306"

  url "https://github.com/riatelab/magrit/releases/download/v#{version}/Magrit-Mac-#{version}-Installer.dmg",
      verified: "github.com/riatelab/magrit/"
  name "Magrit"
  desc "Thematic cartography"
  homepage "https://magrit.cnrs.fr/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Magrit.app"

  zap trash: [
    "~/Library/Application Support/magrit",
    "~/Library/Preferences/com.riatelab.magrit.plist",
    "~/Library/Saved Application State/com.riatelab.magrit.savedState",
  ]
end
