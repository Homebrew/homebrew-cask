cask "font-geist" do
  version "1.7.2"
  sha256 "7fc800d2ac6b92844895196e5041aca55d814c15db70c44f79b3b83ab82b04e2"

  url "https://github.com/vercel/geist-font/releases/download/v#{version}/geist-font-v#{version}.zip",
      verified: "github.com/vercel/geist-font/"
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

  # No zap stanza required
end
