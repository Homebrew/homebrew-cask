cask "reflex" do
  version "1.2"
  sha256 "5a192115954a28dccf29ea91a41f226af724ac1ff329362e26fc495073e0424a"

  url "https://stuntsoftware.com/download/reflex_#{version}.zip"
  name "Reflex"
  desc "Media key forwarder for Music (iTunes) and Spotify"
  homepage "https://stuntsoftware.com/reflex/"

  livecheck do
    url :homepage
    regex(/href=.*?reflex[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :mojave"

  app "Reflex.app"

  zap trash: "~/Library/Preferences/com.stuntsoftware.Reflex.plist"
end
