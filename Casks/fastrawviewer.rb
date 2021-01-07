cask "fastrawviewer" do
  version "1.7.2.1696"
  sha256 "16b121d501e10fba89f778006b9151709cb367b74d6aab23dc100bc3107d8b7b"

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  appcast "https://www.fastrawviewer.com/download"
  name "FastRawViewer"
  desc "Opens RAW files and renders them on-the-fly"
  homepage "https://www.fastrawviewer.com/"

  app "FastRawViewer.app"
end
