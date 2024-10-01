cask "font-geist" do
  version "1.4.0"
  sha256 "b2c99487cd205def10ce8ab4b2ca045426c5c0e60f9707ec53c31146c63eb7b2"

  url "https://github.com/vercel/geist-font/releases/download/#{version}/Geist-v#{version}.zip",
      verified: "github.com/vercel/geist-font/"
  name "Geist"
  homepage "https://vercel.com/font/sans"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Geist/otf/Geist-Black.otf"
  font "Geist/otf/Geist-Bold.otf"
  font "Geist/otf/Geist-ExtraBold.otf"
  font "Geist/otf/Geist-ExtraLight.otf"
  font "Geist/otf/Geist-Light.otf"
  font "Geist/otf/Geist-Medium.otf"
  font "Geist/otf/Geist-Regular.otf"
  font "Geist/otf/Geist-SemiBold.otf"
  font "Geist/otf/Geist-Thin.otf"
  font "Geist/variable/Geist[wght].ttf"

  # No zap stanza required
end
