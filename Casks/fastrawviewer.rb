cask "fastrawviewer" do
  version "2.0.4.1912"
  sha256 "f8c919f88e279cf0afef037f6bc77b8470301ad6d84f9bce33a9d7a1612c0fd9"

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  name "FastRawViewer"
  desc "Opens RAW files and renders them on-the-fly"
  homepage "https://www.fastrawviewer.com/"

  livecheck do
    url "https://updates.fastrawviewer.com/data/"
    regex(/FastRawViewer[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "FastRawViewer.app"

  zap trash: "~/Library/Preferences/com.libraw-llc.FastRawViewer.plist"
end
