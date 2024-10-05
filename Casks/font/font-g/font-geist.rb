cask "font-geist" do
  version "1.4.0"
  sha256 "fafb2a4ce068d293bd53c29cef517597cef6437dc5f6eb5ecca8bc40337ec179"

  url "https://github.com/vercel/geist-font/releases/download/#{version}/Geist-v#{version}.zip",
      verified: "github.com/vercel/geist-font/"
  name "Geist"
  homepage "https://vercel.com/font/sans"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Geist/otf/Geist-Black.otf"
  font "Geist/otf/Geist-Bold.otf"
  font "Geist/otf/Geist-ExtraBold.otf"
  font "Geist/otf/Geist-ExtraLight.otf"
  font "Geist/otf/Geist-Light.otf"
  font "Geist/otf/Geist-Medium.otf"
  font "Geist/otf/Geist-Regular.otf"
  font "Geist/otf/Geist-SemiBold.otf"
  font "Geist/otf/Geist-Thin.otf"
  font "Geist/variable/Geist[wght].ttf"

  # No zap stanza required
end
