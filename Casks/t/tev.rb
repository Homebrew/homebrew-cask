cask "tev" do
  arch intel: "-intel"

  version "2.6.2"
  sha256 arm:   "c8f8c84c8a02d151e232387e8d83acc58580ad7c408f7d55078891c436caf289",
         intel: "7ff5bae47780c96b7314f9325fe26a3ee7d17db1ac4525bb7084201592594583"

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev#{arch}.dmg"
  name "tev"
  desc "High dynamic range (HDR) image viewer with accurate color management"
  homepage "https://github.com/Tom94/tev"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "tev.app"
  binary "#{appdir}/tev.app/Contents/MacOS/tev"

  zap trash: "~/Library/Preferences/org.tom94.tev.plist"
end
