cask "font-geist-mono" do
  version "1.4.01"
  sha256 "2338de729353fa25e62581f87be9d6620ec246eac28179c2c2c9f77e5fdfa548"

  url "https://github.com/vercel/geist-font/releases/download/#{version}/GeistMono-#{version}.zip",
      verified: "github.com/vercel/geist-font/"
  name "Geist Mono"
  homepage "https://vercel.com/font/mono"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "GeistMono-#{version}/otf/GeistMono-Black.otf"
  font "GeistMono-#{version}/otf/GeistMono-Bold.otf"
  font "GeistMono-#{version}/otf/GeistMono-Light.otf"
  font "GeistMono-#{version}/otf/GeistMono-Medium.otf"
  font "GeistMono-#{version}/otf/GeistMono-Regular.otf"
  font "GeistMono-#{version}/otf/GeistMono-SemiBold.otf"
  font "GeistMono-#{version}/otf/GeistMono-Thin.otf"
  font "GeistMono-#{version}/otf/GeistMono-UltraBlack.otf"
  font "GeistMono-#{version}/otf/GeistMono-UltraLight.otf"
  font "GeistMono-#{version}/variable/GeistMono[wght].ttf"

  # No zap stanza required
end
