cask "fastrawviewer" do
  version "2.0.1.1862"
  sha256 "086845496a98f9a55a631d1f7ee1c61b9c3c6545d81956318a2fbcdeb24dac91"

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
