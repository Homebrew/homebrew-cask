cask "librecad" do
  version "2.2.0.1"
  sha256 "23b47914440c99d6d0371e67d31f5bb328ad8f6966d7ed564820cb7a71a3b350"

  url "https://github.com/LibreCAD/LibreCAD/releases/download/#{version}/LibreCAD-#{version}.dmg",
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
end
