cask "font-geist-mono" do
  version "1.5.1"
  sha256 "2e5495158a952ac839dfbb371d4910d2f6f0ea8e0253f103bc6cf66041886e4c"

  url "https://github.com/vercel/geist-font/releases/download/#{version}/geist-font-#{version}.zip",
      verified: "github.com/vercel/geist-font/"
  name "Geist Mono"
  homepage "https://vercel.com/font"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-Black.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-BlackItalic.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-Bold.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-BoldItalic.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-ExtraBold.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-ExtraBoldItalic.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-ExtraLight.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-ExtraLightItalic.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-Italic.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-Light.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-LightItalic.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-Medium.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-MediumItalic.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-Regular.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-SemiBold.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-SemiBoldItalic.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-Thin.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-ThinItalic.otf"
  font "geist-font-#{version}/fonts/GeistMono/variable/GeistMono-Italic[wght].ttf"
  font "geist-font-#{version}/fonts/GeistMono/variable/GeistMono[wght].ttf"

  # No zap stanza required
end
