cask "fastrawviewer" do
  version "1.7.1.1693"
  sha256 "370efe12ea2643cc20a30ca4833dc525bf4f526972c82dfa25eb6ef08107d14d"

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  appcast "https://www.fastrawviewer.com/download"
  name "FastRawViewer"
  desc "Opens RAW files and renders them on-the-fly"
  homepage "https://www.fastrawviewer.com/"

  app "FastRawViewer.app"
end
