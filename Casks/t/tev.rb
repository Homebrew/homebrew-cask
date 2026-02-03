cask "tev" do
  arch intel: "-intel"

  version "2.8.0"
  sha256 arm:   "9dbf50d0984a0dddf96f805437a0532225a2a9f2e3cb43dc5c7eea4ea63394f1",
         intel: "66da0a0203bb315bedf8444bb71aed065291912a3be73d05b1c4cc1cbbddf94a"

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
