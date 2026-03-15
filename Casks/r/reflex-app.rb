cask "reflex-app" do
  version "2.0"
  sha256 "451ef5f2969f5bec8124fc3445a0b26a08c21997c4523835d6c15fbefbf8d195"

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
