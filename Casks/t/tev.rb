cask "tev" do
  arch intel: "-intel"

  version "2.4.0"
  sha256 arm:   "1880d3cd16b00710208aaa2c5608369b84ff0fd9ecf600ad6860447f8d3c7669",
         intel: "32fd2c5353eb207db062bbf24f66fdf615d9986db9c2cd0e558d4d1c9bb900fd"

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev#{arch}.dmg"
  name "tev"
  desc "High dynamic range (HDR) image viewer with accurate color management"
  homepage "https://github.com/Tom94/tev"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :catalina"

  app "tev.app"
  binary "#{appdir}/tev.app/Contents/MacOS/tev"

  zap trash: "~/Library/Preferences/org.tom94.tev.plist"
end
