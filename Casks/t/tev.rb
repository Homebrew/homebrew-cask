cask "tev" do
  arch intel: "-intel"

  version "2.11.0"
  sha256 arm:   "7d55fd16d4b1cf66bf8ce66682d95eb230f2ba3adc242bcaed72ff57688d7c75",
         intel: "2740f1d1ee31c2dceb84ba817731b216027b66b2caf23486598bed317a34132a"

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
