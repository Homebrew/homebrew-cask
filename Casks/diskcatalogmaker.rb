cask "diskcatalogmaker" do
  version "8.2.1"
  sha256 "93611dfa6f1e626de7648e243c96f6150a97a3592ad47cf408661195e87feed2"

  url "https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip",
          must_contain: version.no_dots
  name "DiskCatalogMaker"
  homepage "https://diskcatalogmaker.com/"

  app "DiskCatalogMaker.app"
end
