cask "fastrawviewer" do
  version "2.0.2.1891"
  sha256 "a26a384659e881f189f6e761adb1eb731b62707b4e096ca80fed932393c80dfe"

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
end
