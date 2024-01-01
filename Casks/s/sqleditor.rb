cask "sqleditor" do
  version "4.0.3"
  sha256 "c737c67ad57a2c9be0168a5c7466a35e71669ed0ec908cd09cb678bc41db3fea"

  url "http://www.malcolmhardie.com/sqleditor/releases/#{version}/SQLEditor-#{version.dots_to_hyphens}.zip"
  name "SQLEditor"
  desc "SQL database design tool"
  homepage "http://www.malcolmhardie.com/sqleditor/"

  livecheck do
    url "http://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml"
    strategy :sparkle, &:short_version
  end

  app "SQLEditor.app"
end
