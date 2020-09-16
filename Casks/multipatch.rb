cask "multipatch" do
  version "1.7"
  sha256 "4d92147ac60aa4224959e53d91ef3c457ad2fb47dad739ce7f87bc456ec94e06"

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
