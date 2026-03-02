cask "tev" do
  arch intel: "-intel"

  version "2.10.0"
  sha256 arm:   "ab606c147c89ef68419fee8cdc97a607f289c5cc326cbcd69f02f11e031d5d74",
         intel: "6f623d52ea9b17ef3c1b8cc8f4078ccc7f9fe72a614ad5ecb8fb79862c56a07f"

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
