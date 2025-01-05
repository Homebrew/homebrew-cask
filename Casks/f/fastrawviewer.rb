cask "fastrawviewer" do
  version "2.0.9.2038"
  sha256 "4078571e0e1ac5b392f6caac3ea80cbd73da72493d8a7035e9ddbd0729929c10"

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  name "FastRawViewer"
  desc "Opens RAW files and renders them on-the-fly"
  homepage "https://www.fastrawviewer.com/"

  livecheck do
    url "https://updates.fastrawviewer.com/data/"
    regex(/FastRawViewer[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "FastRawViewer.app"

  zap trash: "~/Library/Preferences/com.libraw-llc.FastRawViewer.plist"
end
