cask "font-geist-mono" do
  version "1.3.0"
  sha256 "d6d19b0fc600110cb1595152c803a1f08e258f76637d1509baf76e2e0b9708d5"

  url "https://github.com/vercel/geist-font/releases/download/#{version}/GeistMono-#{version}.zip",
      verified: "github.com/vercel/geist-font/"
  name "Geist Mono"
  homepage "https://vercel.com/font/mono"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "GeistMono-#{version}/statics-otf/GeistMono-Black.otf"
  font "GeistMono-#{version}/statics-otf/GeistMono-Bold.otf"
  font "GeistMono-#{version}/statics-otf/GeistMono-Light.otf"
  font "GeistMono-#{version}/statics-otf/GeistMono-Medium.otf"
  font "GeistMono-#{version}/statics-otf/GeistMono-Regular.otf"
  font "GeistMono-#{version}/statics-otf/GeistMono-SemiBold.otf"
  font "GeistMono-#{version}/statics-otf/GeistMono-Thin.otf"
  font "GeistMono-#{version}/statics-otf/GeistMono-UltraBlack.otf"
  font "GeistMono-#{version}/statics-otf/GeistMono-UltraLight.otf"
  font "GeistMono-#{version}/variable-ttf/GeistMonoVF.ttf"

  # No zap stanza required
end
