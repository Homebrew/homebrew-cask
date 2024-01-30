cask "easydevo" do
  version "0.3.3"
  sha256 "6723db5797fa51dde637cf1907ad0243a4af3c6a5dc9e2ac87062c9278c024c8"

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
