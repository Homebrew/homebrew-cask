cask "font-geist" do
  version "1.8.2"
  sha256 "43ffb66912b1c49e40c371d96e86b3b3dab42db83eb2d0c8a17321210394c4c7"

  url "https://github.com/vercel/geist-font/releases/download/v#{version}/geist-font-v#{version}.zip"
  name "Geist Sans"
  homepage "https://vercel.com/font"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "geist-font/Geist/otf/Geist-Black.otf"
  font "geist-font/Geist/otf/Geist-BlackItalic.otf"
  font "geist-font/Geist/otf/Geist-Bold.otf"
  font "geist-font/Geist/otf/Geist-BoldItalic.otf"
  font "geist-font/Geist/otf/Geist-ExtraBold.otf"
  font "geist-font/Geist/otf/Geist-ExtraBoldItalic.otf"
  font "geist-font/Geist/otf/Geist-ExtraLight.otf"
  font "geist-font/Geist/otf/Geist-ExtraLightItalic.otf"
  font "geist-font/Geist/otf/Geist-Italic.otf"
  font "geist-font/Geist/otf/Geist-Light.otf"
  font "geist-font/Geist/otf/Geist-LightItalic.otf"
  font "geist-font/Geist/otf/Geist-Medium.otf"
  font "geist-font/Geist/otf/Geist-MediumItalic.otf"
  font "geist-font/Geist/otf/Geist-Regular.otf"
  font "geist-font/Geist/otf/Geist-SemiBold.otf"
  font "geist-font/Geist/otf/Geist-SemiBoldItalic.otf"
  font "geist-font/Geist/otf/Geist-Thin.otf"
  font "geist-font/Geist/otf/Geist-ThinItalic.otf"
  font "geist-font/Geist/variable/Geist-Italic[wght].ttf"
  font "geist-font/Geist/variable/Geist[wght].ttf"

  zap :not_required
end
