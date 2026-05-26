cask "tev" do
  arch intel: "-intel"

  version "2.12.1"
  sha256 arm:   "c141c1cff1ec7edc61aa4125b0c960a9dbfe397e9901af25a835ba3bb204fa6f",
         intel: "79db2e6297d6d99981bbc808cea9b9f2d35dc5f6fab4ac6ffd5bf5e7a4a5b02f"

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
