cask "sqleditor" do
  version "3.7.4"
  sha256 "9510647a7ca994d84af2060591b0f8414051312ca3888cc116ec6efa43a14bee"

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  appcast "https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml"
  name "SQLEditor"
  homepage "https://www.malcolmhardie.com/sqleditor/"

  app "SQLEditor.app"
end
