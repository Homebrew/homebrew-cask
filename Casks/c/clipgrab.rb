cask "clipgrab" do
  version "3.9.10"
  sha256 "13bf212540cd2ed89299f40f70505c9d1209752500e63ded1967aedd266f32f4"

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name "ClipGrab"
  desc "Downloads videos and audio from websites"
  homepage "https://clipgrab.org/"

  livecheck do
    url :homepage
    regex(/href=.*?ClipGrab[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "ClipGrab.app"

  zap trash: "~/Library/Preferences/de.clipgrab.ClipGrab.plist"

  caveats do
    requires_rosetta
  end
end
