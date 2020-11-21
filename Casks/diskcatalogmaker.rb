cask "diskcatalogmaker" do
  version "8.2.7"
  sha256 "271281e18c7b6514072e17f42ec6fb3024b323ce9e8066595d2144b502f30a52"

  url "https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip",
          must_contain: version.no_dots
  name "DiskCatalogMaker"
  desc "Toast-bundled version of DiskCatalogMaker"
  homepage "https://diskcatalogmaker.com/"

  app "DiskCatalogMaker.app"
end
