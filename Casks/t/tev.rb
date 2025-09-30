cask "tev" do
  arch intel: "-intel"

  version "2.5.1"
  sha256 arm:   "5e366d228c8a7df747100b8553a89fc3e27570968259308ac2c8848338f632b9",
         intel: "d82c74f6a8ecbd56efd539aa55b2ab12d0973ff1d23ecd224d64aff0d19f5aae"

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
