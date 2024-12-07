cask "font-geist" do
  version "1.4.01"
  sha256 "d12b5e123bdd5a9facbd52ab6a24756587b086d6a76fc629a28456675bfad4e3"

  url "https://github.com/vercel/geist-font/releases/download/#{version}/Geist-v#{version}.zip",
      verified: "github.com/vercel/geist-font/"
  name "Geist"
  homepage "https://vercel.com/font/sans"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Geist-v#{version}/otf/Geist-Black.otf"
  font "Geist-v#{version}/otf/Geist-Bold.otf"
  font "Geist-v#{version}/otf/Geist-ExtraBold.otf"
  font "Geist-v#{version}/otf/Geist-ExtraLight.otf"
  font "Geist-v#{version}/otf/Geist-Light.otf"
  font "Geist-v#{version}/otf/Geist-Medium.otf"
  font "Geist-v#{version}/otf/Geist-Regular.otf"
  font "Geist-v#{version}/otf/Geist-SemiBold.otf"
  font "Geist-v#{version}/otf/Geist-Thin.otf"
  font "Geist-v#{version}/variable/Geist[wght].ttf"

  # No zap stanza required
end
