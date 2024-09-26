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

  font "Geist-#{version}/statics-otf/Geist-Black.otf"
  font "Geist-#{version}/statics-otf/Geist-Bold.otf"
  font "Geist-#{version}/statics-otf/Geist-Light.otf"
  font "Geist-#{version}/statics-otf/Geist-Medium.otf"
  font "Geist-#{version}/statics-otf/Geist-Regular.otf"
  font "Geist-#{version}/statics-otf/Geist-SemiBold.otf"
  font "Geist-#{version}/statics-otf/Geist-Thin.otf"
  font "Geist-#{version}/statics-otf/Geist-UltraBlack.otf"
  font "Geist-#{version}/statics-otf/Geist-UltraLight.otf"
  font "Geist-#{version}/variable-ttf/GeistVF.ttf"

  # No zap stanza required
end
