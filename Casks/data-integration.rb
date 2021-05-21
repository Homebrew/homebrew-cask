cask "data-integration" do
  version "9.1.0.0-324"
  sha256 "ffbcb7bba736af765bbb14ccb0a5f2ae239e75b5aebf0ecfee924a5738d2c530"

  url "https://downloads.sourceforge.net/pentaho/pdi-ce-#{version}.zip"
  name "Pentaho Data Integration"
  desc "End to end data integration and analytics platform"
  homepage "https://sourceforge.net/projects/pentaho/"

  app "data-integration/Data Integration.app"
end
