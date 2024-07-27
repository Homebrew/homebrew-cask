cask "pablodraw" do
  version "3.3.13-beta"
  sha256 "52aa4b66385055eb9ff2a1dc5f2459c6ed4b5a072f360652e6d9d3bf65c13c5c"

  url "https://github.com/cwensley/pablodraw/releases/download/#{version}/PabloDraw-Mac.dmg"
  name "PabloDraw"
  desc "Ansi/Ascii text and RIPscrip editor/viewer"
  homepage "https://github.com/cwensley/pablodraw/"

  app "PabloDraw.app"

  zap trash: [
    "~/Library/Application Support/ca.picoe.pablodraw",
    "~/Library/Preferences/ca.picoe.pablodraw.plist",
    "~/Library/Saved Application State/ca.picoe.pablodraw.savedState",
  ]
end
