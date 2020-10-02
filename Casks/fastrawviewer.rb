cask "fastrawviewer" do
  version "1.6.1.1664"
  sha256 "899e1ae2f0583b1a8128e6c519288308cb59743a3f18234a3f586c4e9342879b"

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  appcast "https://www.fastrawviewer.com/download"
  name "FastRawViewer"
  desc "Opens RAW files and renders them on-the-fly"
  homepage "https://www.fastrawviewer.com/"

  app "FastRawViewer.app"
end
