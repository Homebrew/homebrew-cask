cask "font-geist" do
  version "1.4.0"
  sha256 "1bd906111a8853f0720831d08a363077358afc755acf893c6d4ed29529bef139"

  url "https://github.com/vercel/geist-font/releases/download/#{version}/Geist-#{version}.zip",
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
