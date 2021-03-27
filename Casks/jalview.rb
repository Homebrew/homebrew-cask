cask "jalview" do
  version "2.11.1.4"
  sha256 "b49a13803461d35bad9df4ce587a910d7e0bc9123fcdd8b1060b8ed39dd92afa"

  url "https://www.jalview.org/getdown/release/install4j/1.8/Jalview-#{version.dots_to_underscores}-macos-java_8.dmg"
  appcast "https://www.jalview.org/getdown/release/install4j/1.8/updates.xml"
  name "Jalview"
  desc "Multiple sequence alignment editor, visualisor, analysis and figure generator"
  homepage "https://www.jalview.org/"

  app "Jalview.app"
end
