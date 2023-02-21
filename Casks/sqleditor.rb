cask "sqleditor" do
  version "4.0.2,11115"
  sha256 "f3572050909493ba355dcdf4384bd973cefb54309ccc5327ed90b6014f814e6e"

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
