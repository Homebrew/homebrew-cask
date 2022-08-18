cask "pcsx2" do
  version "1.7.3221"
  sha256 "8d1abb0aac38211129a7b28688d22d61e37a075f5bcec9c7a62bf91440670300"

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

  app "PCSX2-v#{version}.app"

  zap trash: [
    "~/Library/Application Support/PCSX2",
    "~/Library/Preferences/net.pcsx2.pcsx2.plist",
  ]
end
