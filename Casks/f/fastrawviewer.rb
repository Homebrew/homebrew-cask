cask "fastrawviewer" do
  version "2.0.11.2088"
  sha256 "93cfbbb3f896119b8193dead426e676d0cd373a02a59f345c1b44c774beb2cd1"

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  name "FastRawViewer"
  desc "Opens RAW files and renders them on-the-fly"
  homepage "https://www.fastrawviewer.com/"

  livecheck do
    url "https://updates.fastrawviewer.com/data/"
    regex(/FastRawViewer[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  app "FastRawViewer.app"

  zap trash: "~/Library/Preferences/com.libraw-llc.FastRawViewer.plist"
end
