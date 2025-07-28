cask "tev" do
  arch intel: "-intel"

  version "2.3.2"
  sha256 arm:   "3aee171b17e74c2bfe6ceb4bc504c2582dae58fc475dc6f8c4e6f140d3aa9a71",
         intel: "4ca9bc5b8ce158668e32a6081f2290690cfd3b2d6716515bc235be09c1e911e6"

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
