cask "font-geist-mono" do
  version "1.4.0"
  sha256 "0ef8aaa0ac16f8a6b8240df45eeb0a31e6c5ffde5b2523611e9c5c0f3c41b1ea"

  url "https://github.com/vercel/geist-font/releases/download/#{version}/GeistMono-v#{version}.zip",
      verified: "github.com/vercel/geist-font/"
  name "Geist Mono"
  homepage "https://vercel.com/font/mono"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "GeistMono/otf/GeistMono-Black.otf"
  font "GeistMono/otf/GeistMono-Bold.otf"
  font "GeistMono/otf/GeistMono-Light.otf"
  font "GeistMono/otf/GeistMono-Medium.otf"
  font "GeistMono/otf/GeistMono-Regular.otf"
  font "GeistMono/otf/GeistMono-SemiBold.otf"
  font "GeistMono/otf/GeistMono-Thin.otf"
  font "GeistMono/otf/GeistMono-UltraBlack.otf"
  font "GeistMono/otf/GeistMono-UltraLight.otf"
  font "GeistMono/variable/GeistMono[wght].ttf"

  # No zap stanza required
end
