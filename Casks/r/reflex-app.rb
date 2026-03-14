cask "reflex-app" do
  version "2.0"
  sha256 "7f2b92670e723541e65cd3f6dfec637d35b6f009e86cd04ac420bb536ddb4592"

  url "https://stuntsoftware.com/download/reflex_#{version}.zip"
  name "Reflex"
  desc "Media key forwarder for Music (iTunes) and Spotify"
  homepage "https://stuntsoftware.com/reflex/"

  livecheck do
    url :homepage
    regex(/href=.*?reflex[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Reflex.app"

  zap trash: "~/Library/Preferences/com.stuntsoftware.Reflex.plist"

  caveats do
    requires_rosetta
  end
end
