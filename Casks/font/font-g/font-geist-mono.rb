cask "font-geist-mono" do
  version "1.4.0"
  sha256 "70423ceba8d5f768a9a9a9cb56c449a5307d20679d951113acdf38d7107a548b"

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
