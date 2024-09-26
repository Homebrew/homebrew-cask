cask "font-geist-mono" do
  version "1.4.0"
  sha256 "91721f29a42d7e9e87348cd2db49a8f41c9363e43665be8c3aa44564c3e0cd3d"

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
