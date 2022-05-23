cask "data-integration" do
  version "9.3.0.0-428"
  sha256 "5c7a453ec448d4b8a568e445b119bcf4f0f41517b42e3626bc437f882c9f46c1"

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
