cask "modelio" do
  version "4.1.0"
  sha256 "9d588c06a00247153bcb3089c8e7d76682231f7e2750e392e345d0ca0dbb813d"

  # sourceforge.net/modeliouml/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/modeliouml/modelio-open-source-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast "https://sourceforge.net/projects/modeliouml/rss"
  name "Modelio"
  homepage "https://www.modelio.org/"

  app "Modelio #{version.major_minor}.app"

  zap trash: "~/.modelio"
end
