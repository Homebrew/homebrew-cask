cask "multipatch" do
  version "1.7.1"
  sha256 "406e26a2518d447a26b6a2b852d369e97c04cf9b25eea7a4d5a5f63a880cf94d"

  url "https://projects.sappharad.com/tools/multipatch#{version.no_dots}.zip"
  appcast "https://github.com/Sappharad/MultiPatch/releases.atom"
  name "MultiPatch"
  homepage "https://projects.sappharad.com/tools/multipatch.html"

  app "MultiPatch/MultiPatch.app"

  zap trash: [
    "~/Library/Preferences/com.sappharad.MultiPatch.plist",
    "~/Library/Saved Application State/com.sappharad.MultiPatch.savedState",
  ]
end
