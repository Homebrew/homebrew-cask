cask "librecad" do
  version "2.2.1"
  sha256 "e3e13799cff6767f76e3716e72999f18eded6f008975d75dac650425f661c6fb"

  url "https://github.com/LibreCAD/LibreCAD/releases/download/v#{version}/LibreCAD-v#{version}.dmg",
      verified: "github.com/LibreCAD/LibreCAD/"
  name "LibreCAD"
  desc "CAD application"
  homepage "https://librecad.org/"

  app "LibreCAD.app"

  zap trash: [
    "~/Library/Application Support/LibreCAD",
    "~/Library/Preferences/com.librecad.LibreCAD.plist",
    "~/Library/Saved Application State/com.yourcompany.LibreCAD.savedstate",
  ]

  caveats do
    requires_rosetta
  end
end
