cask "diskcatalogmaker" do
  version "8.2.8"
  sha256 :no_check

  url "https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip",
          must_contain: version.no_dots
  name "DiskCatalogMaker"
  desc "Toast-bundled version of DiskCatalogMaker"
  homepage "https://diskcatalogmaker.com/"

  app "DiskCatalogMaker.app"
end
