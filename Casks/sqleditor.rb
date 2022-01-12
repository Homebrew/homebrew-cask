cask "sqleditor" do
  version "3.7.7,10868"
  sha256 "a3a9971413e74091aafce45d7e054a8e70f692d5731acfc8cd585ca34dc97ead"

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version.csv.first}/SQLEditor-#{version.csv.first.dots_to_hyphens}.zip"
  name "SQLEditor"
  desc "SQL database design tool"
  homepage "https://www.malcolmhardie.com/sqleditor/"

  livecheck do
    url "https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml"
    strategy :sparkle
  end

  app "SQLEditor.app"
end
