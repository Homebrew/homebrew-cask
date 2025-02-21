cask "librecad" do
  version "2.2.1.1"
  sha256 "76f8adbb4dbac5312e0c645f7127c3081ce3959b482488352a176a35f9154c0f"

  url "https://github.com/LibreCAD/LibreCAD/releases/download/v#{version}/LibreCAD-v#{version}.dmg",
      verified: "github.com/LibreCAD/LibreCAD/"
  name "LibreCAD"
  desc "CAD application"
  homepage "https://librecad.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
