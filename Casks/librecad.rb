cask "librecad" do
  version "2.2.0"
  sha256 "e17d81be0d943f99613d4c12e9a552e3257a41229a99933b7189ea3e896f5011"

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
