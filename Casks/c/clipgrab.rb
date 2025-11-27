cask "clipgrab" do
  version "3.9.15"
  sha256 "7e1db36feee4cbc5ca72c4f7c4901dc41877a717fbd13e4862822cc85779a4bb"

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name "ClipGrab"
  desc "Downloads videos and audio from websites"
  homepage "https://clipgrab.org/"

  livecheck do
    url :homepage
    regex(/href=.*?ClipGrab[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "ClipGrab.app"

  zap trash: "~/Library/Preferences/de.clipgrab.ClipGrab.plist"

  caveats do
    requires_rosetta
  end
end
