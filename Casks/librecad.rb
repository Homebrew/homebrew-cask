cask "librecad" do
  version "2.1.3"
  sha256 "e17f74be117c2cabbc9c5844ae459dd1d1e6f94b17d09f0e809ef23b936a8952"

  url "https://github.com/LibreCAD/LibreCAD/releases/download/#{version}/LibreCAD_#{version.dots_to_hyphens}.dmg",
      verified: "github.com/LibreCAD/LibreCAD/"
  name "LibreCAD"
  homepage "https://librecad.org/"

  app "LibreCAD.app"

  zap trash: [
    "~/Library/Application Support/LibreCAD",
    "~/Library/Preferences/com.librecad.LibreCAD.plist",
    "~/Library/Saved Application State/com.yourcompany.LibreCAD.savedstate",
  ]
end
