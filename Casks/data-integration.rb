cask "data-integration" do
  version "9.0.0.0-423"
  sha256 "05adf26c8b51fb14d1ea75e73579a7718d881228f502a4be5d1ce3a27d5c7997"

  url "https://downloads.sourceforge.net/pentaho/pdi-ce-#{version}.zip"
  appcast "https://sourceforge.net/projects/pentaho/rss?path=/"
  name "Pentaho Data Integration"
  homepage "https://sourceforge.net/projects/pentaho/"

  app "data-integration/Data Integration.app"
end
