cask "font-geist-mono" do
  version "1.9.2"
  sha256 "15f066d58dcb99fb10014a49913009fdaf41e464cfb8851a44b44e593c95d3d8"

  url "https://github.com/vercel/geist-font/releases/download/v#{version}/geist-font-v#{version}.zip"
  name "Geist Mono"
  homepage "https://vercel.com/font"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "geist-font/GeistMono/otf/GeistMono-Black.otf"
  font "geist-font/GeistMono/otf/GeistMono-BlackItalic.otf"
  font "geist-font/GeistMono/otf/GeistMono-Bold.otf"
  font "geist-font/GeistMono/otf/GeistMono-BoldItalic.otf"
  font "geist-font/GeistMono/otf/GeistMono-ExtraBold.otf"
  font "geist-font/GeistMono/otf/GeistMono-ExtraBoldItalic.otf"
  font "geist-font/GeistMono/otf/GeistMono-ExtraLight.otf"
  font "geist-font/GeistMono/otf/GeistMono-ExtraLightItalic.otf"
  font "geist-font/GeistMono/otf/GeistMono-Italic.otf"
  font "geist-font/GeistMono/otf/GeistMono-Light.otf"
  font "geist-font/GeistMono/otf/GeistMono-LightItalic.otf"
  font "geist-font/GeistMono/otf/GeistMono-Medium.otf"
  font "geist-font/GeistMono/otf/GeistMono-MediumItalic.otf"
  font "geist-font/GeistMono/otf/GeistMono-Regular.otf"
  font "geist-font/GeistMono/otf/GeistMono-SemiBold.otf"
  font "geist-font/GeistMono/otf/GeistMono-SemiBoldItalic.otf"
  font "geist-font/GeistMono/otf/GeistMono-Thin.otf"
  font "geist-font/GeistMono/otf/GeistMono-ThinItalic.otf"
  font "geist-font/GeistMono/variable/GeistMono-Italic[wght].ttf"
  font "geist-font/GeistMono/variable/GeistMono[wght].ttf"

  zap :not_required
end
