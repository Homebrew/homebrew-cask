cask "clipgrab" do
  version "3.9.11"
  sha256 "f2ca38dab723d7667c9d66b90d0a85b0ac8eee8ed8ce2cc2767c22319bb2dc01"

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
