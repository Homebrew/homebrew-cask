cask "pcsx2" do
  version "1.7.3210"
  sha256 "76f8735f324fe08a370e115eac242427b4cb89670a8a5020630aea549f7b6bed"

  url "https://github.com/PCSX2/pcsx2/releases/download/v#{version}/pcsx2-v#{version}-macos-Qt.tar.gz",
      verified: "https://github.com/PCSX2/pcsx2/releases"
  name "PCSX2"
  desc "Playstation 2 Emulator"
  homepage "https://pcsx2.net/"

  livecheck do
    url "https://github.com/PCSX2/pcsx2/releases/"
    strategy :page_match
    regex(/pcsx2[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]Qt\.t/i)
  end

  app "PCSX2.app"

  zap trash: [
    "~/Library/Application Support/PCSX2",
    "~/Library/Preferences/net.pcsx2.pcsx2.plist",
  ]
end
