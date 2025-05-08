cask "font-geist" do
  version "1.4.2"
  sha256 "e94caf733a6b019a0d4d97da9548c2ca8cbe4b2703ef1d07113a82d9e774cfe5"

  url "https://github.com/vercel/geist-font/releases/download/#{version}/geist-font-#{version}.zip",
      verified: "github.com/vercel/geist-font/"
  name "Geist"
  homepage "https://vercel.com/font/sans"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "geist-font-#{version}/fonts/Geist/otf/Geist-Black.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-Bold.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-ExtraBold.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-ExtraLight.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-Light.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-Medium.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-Regular.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-SemiBold.otf"
  font "geist-font-#{version}/fonts/Geist/otf/Geist-Thin.otf"
  font "geist-font-#{version}/fonts/Geist/variable/Geist[wght].ttf"

  # No zap stanza required
end
