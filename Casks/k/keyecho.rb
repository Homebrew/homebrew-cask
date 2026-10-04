cask "keyecho" do
  arch arm: "aarch64", intel: "x64"

  version "1.1.1"
  sha256 arm:   "b182ec028e2d8bcdf8f7c30def2c3aaa02bd893a654a994c2ac39d1f11b0542e",
         intel: "8f92e053311d08fce694fdeb32c741435fd87f80fa5f2d04ab683c3802c56ef4"

  url "https://github.com/ZacharyL2/KeyEcho/releases/download/v#{version}/KeyEcho_#{version}_#{arch}.dmg"
  name "KeyEcho"
  desc "Mechanical keyboard sounds for every keystroke"
  homepage "https://keyecho.app/"

  auto_updates true
  depends_on :macos

  app "KeyEcho.app"

  uninstall launchctl: "KeyEcho"

  zap trash: [
    "~/Library/Application Support/app.keyecho.keyecho",
    "~/Library/Caches/app.keyecho.keyecho",
    "~/Library/LaunchAgents/KeyEcho.plist",
    "~/Library/WebKit/app.keyecho.keyecho",
  ]
end
