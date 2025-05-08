cask "font-geist-mono" do
  version "1.4.2"
  sha256 "e94caf733a6b019a0d4d97da9548c2ca8cbe4b2703ef1d07113a82d9e774cfe5"

  url "https://github.com/vercel/geist-font/releases/download/#{version}/geist-font-#{version}.zip",
      verified: "github.com/vercel/geist-font/"
  name "Geist Mono"
  homepage "https://vercel.com/font/mono"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-Black.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-Bold.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-Light.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-Medium.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-Regular.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-SemiBold.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-Thin.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-UltraBlack.otf"
  font "geist-font-#{version}/fonts/GeistMono/otf/GeistMono-UltraLight.otf"
  font "geist-font-#{version}/fonts/GeistMono/variable/GeistMono[wght].ttf"

  # No zap stanza required
end
