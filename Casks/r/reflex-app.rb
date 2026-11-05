cask "reflex-app" do
  version "2.1"
  sha256 "c331644578c57e39a2b8244c00b4fda22586e8d65641342a6c56593b70288bfc"

  url "https://stuntsoftware.com/download/reflex_#{version}.zip"
  name "Reflex"
  desc "Media key forwarder for Music (iTunes) and Spotify"
  homepage "https://stuntsoftware.com/reflex/"

  livecheck do
    url :homepage
    regex(/href=.*?reflex[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: :sonoma

  app "Reflex.app"

  zap trash: "~/Library/Preferences/com.stuntsoftware.Reflex.plist"
end
