cask "librecad" do
  version "2.2.1.2"
  sha256 "c3ec3ddcea1c8c432c8e7e9fc5fbd40474c0e35c1febbf0a203fc355c583f262"

  url "https://github.com/LibreCAD/LibreCAD/releases/download/v#{version}/LibreCAD-v#{version}.dmg",
      verified: "github.com/LibreCAD/LibreCAD/"
  name "LibreCAD"
  desc "CAD application"
  homepage "https://librecad.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

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
