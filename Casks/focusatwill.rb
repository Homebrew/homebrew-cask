cask "focusatwill" do
  version "2.0.0"
  sha256 "c57df34add6bcefbc86f4180c71ca334b4ca7c58114a631c5bcf66f27b0dbe6e"

  url "https://faw-desktop.s3.amazonaws.com/focusatwill-#{version}.dmg",
      verified: "faw-desktop.s3.amazonaws.com/"
  appcast "https://faw-desktop.s3.amazonaws.com/latest-mac.yml"
  name "Focus@Will"
  homepage "https://www.focusatwill.com/"

  app "focusatwill.app"
end
