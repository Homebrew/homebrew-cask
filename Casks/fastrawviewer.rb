cask "fastrawviewer" do
  version "1.7.4.1736"
  sha256 "d8b34eb49309f767f1449698ae43a7c1a5faba7677176685b8adbc071d414523"

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
