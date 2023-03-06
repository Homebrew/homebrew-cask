cask "sqleditor" do
  version "4.0.3,11118"
  sha256 "c737c67ad57a2c9be0168a5c7466a35e71669ed0ec908cd09cb678bc41db3fea"

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
