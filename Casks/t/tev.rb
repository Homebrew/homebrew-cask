cask "tev" do
  arch intel: "-intel"

  version "2.6.3"
  sha256 arm:   "9684883b661cce8b9723d757e056c6ad6b831d5fedc4c32cfbe2bebbee46274b",
         intel: "a39483ed457a089cd8c7d2055776b1603d74cad78cff7ca43728a5b6e2c6e426"

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
