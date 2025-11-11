cask "clipgrab" do
  version "3.9.12"
  sha256 "016a478e0681d776119e5334821e663d2936059262678b9a084fa96184d8948a"

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
