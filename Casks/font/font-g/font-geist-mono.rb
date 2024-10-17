cask "font-geist-mono" do
  version "1.4.01"
  sha256 "ae3112093f124621ec579c3849167df954f80feacd7870bfcc2f62f739830fc1"

  url "https://github.com/vercel/geist-font/releases/download/#{version}/GeistMono-v#{version}.zip",
      verified: "github.com/vercel/geist-font/"
  name "Geist Mono"
  homepage "https://vercel.com/font/mono"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "otf/GeistMono-Black.otf"
  font "otf/GeistMono-Bold.otf"
  font "otf/GeistMono-Light.otf"
  font "otf/GeistMono-Medium.otf"
  font "otf/GeistMono-Regular.otf"
  font "otf/GeistMono-SemiBold.otf"
  font "otf/GeistMono-Thin.otf"
  font "otf/GeistMono-UltraBlack.otf"
  font "otf/GeistMono-UltraLight.otf"
  font "variable/GeistMono[wght].ttf"

  # No zap stanza required
end
