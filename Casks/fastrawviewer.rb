cask "fastrawviewer" do
  version "1.7.0.1684"
  sha256 "dd48cc8d2fd3adab42177db78c7904a4a62ec1174d5ac32ea30b14b4d9c2be31"

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  appcast "https://www.fastrawviewer.com/download"
  name "FastRawViewer"
  desc "Opens RAW files and renders them on-the-fly"
  homepage "https://www.fastrawviewer.com/"

  app "FastRawViewer.app"
end
