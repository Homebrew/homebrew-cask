cask "keyty" do
  version "1.8.0"
  sha256 "f80665a951ddb545dba229705aedd56720d49a4c047cf49ee1296644330fc127"

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
