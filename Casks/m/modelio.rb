cask "modelio" do
  version "4.1.0"
  sha256 "9d588c06a00247153bcb3089c8e7d76682231f7e2750e392e345d0ca0dbb813d"

  url "https://downloads.sourceforge.net/modeliouml/modelio-open-source-#{version}-macosx.cocoa.x86_64.tar.gz",
      verified: "sourceforge.net/modeliouml/"
  name "Modelio"
  desc "Extensible modelling environment"
  homepage "https://www.modelio.org/"

  app "Modelio #{version.major_minor}.app"

  zap trash: "~/.modelio"

  caveats do
    requires_rosetta
  end
end
