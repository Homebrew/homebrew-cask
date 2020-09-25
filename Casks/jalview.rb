cask "jalview" do
  version "2.11.1.2"
  sha256 "bfc0f6b05249c17508b189a3353190fa145f7665761cb5a08cf3e0c839400a14"

  url "https://www.jalview.org/getdown/release/install4j/1.8/Jalview-#{version.dots_to_underscores}-macos-java_8.dmg"
  appcast "https://www.jalview.org/getdown/release/install4j/1.8/updates.xml"
  name "Jalview"
  homepage "https://www.jalview.org/"

  app "Jalview.app"
end
