cask "tev" do
  arch intel: "-intel"

  version "2.8.1"
  sha256 arm:   "d20d4617d8aceadef52405bcd31a3267662dfd8d9089a33b277014d0c4c86475",
         intel: "8e6c94c094f0314cb6a057519cac212ac7d75d4cf58d32bb507b6dde1c3e4a41"

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
