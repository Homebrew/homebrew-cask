cask "tev" do
  arch intel: "-intel"

  version "2.5.2"
  sha256 arm:   "742bead39891dad930af7265d6c32dc9e6e4abe07e0c5dbff90d7a7628fcc196",
         intel: "04e0cd530c4e2215f72b8a461dd0169e32fe7dba48196e8f3cd5bf02c02f78d8"

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
