cask "tev" do
  arch intel: "-intel"

  version "2.12.2"
  sha256 arm:   "acab07c8997f3356cd11f715c8d55be73020d98e813a794ead82121e89e9de8d",
         intel: "0482eb9e348d6a03c836389dfc48fb81ad99a84842909130bf09cc52020b566a"

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev#{arch}.dmg"
  name "tev"
  desc "High dynamic range (HDR) image viewer with accurate color management"
  homepage "https://github.com/Tom94/tev"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  app "tev.app"
  binary "#{appdir}/tev.app/Contents/MacOS/tev"

  zap trash: "~/Library/Preferences/org.tom94.tev.plist"
end
