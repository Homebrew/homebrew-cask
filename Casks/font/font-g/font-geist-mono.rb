cask "font-geist-mono" do
  version "1.7.2"
  sha256 "7fc800d2ac6b92844895196e5041aca55d814c15db70c44f79b3b83ab82b04e2"

  url "https://github.com/vercel/geist-font/releases/download/v#{version}/geist-font-v#{version}.zip",
      verified: "github.com/vercel/geist-font/"
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

  # No zap stanza required
end
