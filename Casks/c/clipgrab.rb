cask "clipgrab" do
  version "3.9.14"
  sha256 "d359c4f457851b45b07b348620ff0789b0d71dd2530ed402a5a910f1a911a9d1"

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
