cask "diskcatalogmaker" do
  version "8.2.2"
  sha256 "38c3d6ae60345841433a2c4d9d1a86c3a0dbabd4c03acee32af0d51a0d54960b"

  url "https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip",
          must_contain: version.no_dots
  name "DiskCatalogMaker"
  homepage "https://diskcatalogmaker.com/"

  app "DiskCatalogMaker.app"
end
