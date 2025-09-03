cask "tev" do
  arch intel: "-intel"

  version "2.4.1"
  sha256 arm:   "9cbcf94596f37d657bf432f653223b6f22137de98e9492a64b5242585993c333",
         intel: "a06a775600acf0a6a3de3829e75017763f923f1ffbc935450eb30ff5d2df00c9"

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
