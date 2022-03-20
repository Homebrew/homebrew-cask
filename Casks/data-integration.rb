cask "data-integration" do
  version "9.2.0.0-290"
  sha256 "8e64d1125b2403df66f212488762f1558968a3900d079c730b2f6943e346a7e7"

  url "https://downloads.sourceforge.net/pentaho/pdi-ce-#{version}.zip"
  name "Pentaho Data Integration"
  desc "End to end data integration and analytics platform"
  homepage "https://sourceforge.net/projects/pentaho/"

  livecheck do
    url :url
    regex(%r{url=.*?/pdi-ce[._-]v?(\d+(?:[.-]\d+)+)\.zip}i)
  end

  app "data-integration/Data Integration.app"
end
