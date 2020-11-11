cask "fastrawviewer" do
  version "1.6.1.1665"
  sha256 "23a1223de88347d9c939746a3dab3bd1a0169d6ac52198fef67903f1d7717b88"

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  appcast "https://www.fastrawviewer.com/download"
  name "FastRawViewer"
  desc "Opens RAW files and renders them on-the-fly"
  homepage "https://www.fastrawviewer.com/"

  app "FastRawViewer.app"
end
