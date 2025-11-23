cask "tev" do
  arch intel: "-intel"

  version "2.6.1"
  sha256 arm:   "12db0c152227f3a0331bfdb0ad6e62e1c116f67060ca712bd6b7106c53e69549",
         intel: "173dae1a23a9355af480edb500bcecfaee7bb1f326cd90416d8c43910728e58c"

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
