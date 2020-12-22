cask "sqleditor" do
  version "3.7.4,10817"
  sha256 "9510647a7ca994d84af2060591b0f8414051312ca3888cc116ec6efa43a14bee"

  url "https://www.malcolmhardie.com/sqleditor/releases/#{version.before_comma}/SQLEditor-#{version.before_comma.dots_to_hyphens}.zip"
  name "SQLEditor"
  homepage "https://www.malcolmhardie.com/sqleditor/"

  livecheck do
    url "https://www.malcolmhardie.com/sqleditor/appcast/sq2release.xml"
    strategy :sparkle
  end

  app "SQLEditor.app"
end
