cask "reflex-app" do
  version "2.0"
  sha256 "d827cd32cf730c5c8582b200ba1dfb6c1df03e30c3ac6b32c8563ae67d02b489"

  url "https://stuntsoftware.com/download/reflex_#{version}.zip"
  name "Reflex"
  desc "Media key forwarder for Music (iTunes) and Spotify"
  homepage "https://stuntsoftware.com/reflex/"

  livecheck do
    url :homepage
    regex(/href=.*?reflex[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :sonoma"

  app "Reflex.app"

  zap trash: "~/Library/Preferences/com.stuntsoftware.Reflex.plist"
end
