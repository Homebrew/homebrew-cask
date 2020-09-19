cask "jalview" do
  version "2.11.1.1"
  sha256 "7499e96b1956a3797ab4251132bc90968d3f77667f86c8e0578a0bc33a2357fc"

  url "https://www.jalview.org/getdown/release/install4j/1.8/Jalview-#{version.dots_to_underscores}-macos-java_8.dmg"
  appcast "https://www.jalview.org/getdown/release/install4j/1.8/updates.xml"
  name "Jalview"
  homepage "https://www.jalview.org/"

  app "Jalview.app"
end
