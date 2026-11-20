cask "easydmg" do
  version "2.5.0"
  sha256 "c320cae3ea6cc6d90035a42220543710f8b42de54b8df55ab0b1d99110a4e68c"

  url "https://github.com/jeff-schumann/EasyDMG/releases/download/v#{version}/EasyDMG.dmg"
  name "EasyDMG"
  desc "One click DMG installs"
  homepage "https://easydmg.app/"

  auto_updates true
  depends_on macos: :ventura

  app "EasyDMG.app"

  zap trash: [
    "~/Library/HTTPStorages/com.jeff.easydmg",
    "~/Library/Logs/EasyDMG",
    "~/Library/Preferences/com.jeff.easydmg.plist",
    "~/Library/Saved Application State/com.jeff.easydmg.savedState",
  ]
end
