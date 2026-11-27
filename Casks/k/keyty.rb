cask "keyty" do
  version "1.9.0"
  sha256 "43f05fd29e6c80cce9761e7987bb07ef55146cad61eab357cf0552935b936dba"

  url "https://github.com/keytyapp/Keyty/releases/download/v#{version}/Keyty.dmg"
  name "Keyty"
  desc "Keyboard and mouse input visualizer"
  homepage "https://keyty.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Keyty.app"

  zap trash: [
    "~/Library/Preferences/app.keyty.Keyty.plist",
    "~/Library/Saved Application State/app.keyty.Keyty.savedState",
  ]
end
