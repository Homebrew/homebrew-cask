cask "jalview" do
  version "2.11.1.3"
  sha256 "180862a3db9ae57aa355dad5ed5e196a8e2ffa7b2118659ba2a216f244551575"

  url "https://www.jalview.org/getdown/release/install4j/1.8/Jalview-#{version.dots_to_underscores}-macos-java_8.dmg"
  appcast "https://www.jalview.org/getdown/release/install4j/1.8/updates.xml"
  name "Jalview"
  desc "Multiple sequence alignment editor, visualisor, analysis and figure generator"
  homepage "https://www.jalview.org/"

  app "Jalview.app"
end
