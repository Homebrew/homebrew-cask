cask "fastrawviewer" do
  version "1.7.3.1715"
  sha256 "20954531bb166864f500c3d0fed4d75bb364c164ff576fb5839fc41f239d05e1"

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  name "FastRawViewer"
  desc "Opens RAW files and renders them on-the-fly"
  homepage "https://www.fastrawviewer.com/"

  livecheck do
    url "https://updates.fastrawviewer.com/data/"
    strategy :page_match
    regex(/FastRawViewer-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "FastRawViewer.app"
end
