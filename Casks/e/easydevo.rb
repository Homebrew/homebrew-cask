cask "easydevo" do
  version "0.3.4"
  sha256 "3795f382bcb765a11b83ddb66c3f860471f23518f26a85c08ed08426a7711b79"

  url "https://github.com/boring-design/EasyDevo-Distro/releases/download/v#{version}/EasyDevo-Mac-#{version}-Installer.dmg",
      verified: "github.com/boring-design/EasyDevo-Distro/"
  name "EasyDevo"
  desc "Elegant tool built for coding"
  homepage "https://easydevo.boringboring.design/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "EasyDevo.app"

  zap trash: [
    "~/Library/Application Support/EasyDevo",
    "~/Library/Logs/EasyDevo",
    "~/Library/Preferences/dev.strrl.easydevo.plist",
    "~/Library/Saved Application State/dev.strrl.easydevo.savedState",
  ]
end
