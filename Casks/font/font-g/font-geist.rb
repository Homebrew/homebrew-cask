cask "font-geist" do
  version "1.5.0"
  sha256 "8a57ecad52a78d5d4f90e1ac2f8cbf1ed9479c796e52ef2e564f67c8cf06c247"

  url "https://github.com/vercel/geist-font/releases/download/#{version}/geist-font-#{version}.zip",
      verified: "github.com/vercel/geist-font/"
  name "Geist Sans"
  homepage "https://vercel.com/font"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "geist-font-#{version}/fonts/Geist/otf/Geist-Black.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-BlackItalic.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-Bold.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-BoldItalic.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-ExtraBold.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-ExtraBoldItalic.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-ExtraLight.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-ExtraLightItalic.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-Light.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-LightItalic.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-Medium.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-MediumItalic.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-Regular.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-RegularItalic.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-SemiBold.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-SemiBoldItalic.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-Thin.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-ThinItalic.otf"
  font "geist-font-#{version}/fonts/Geist/variable/Geist-Italic[wght].ttf"
  font "geist-font-#{version}/fonts/Geist/variable/Geist[wght].ttf"

  # No zap stanza required
end
