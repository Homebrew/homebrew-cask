cask "diskcatalogmaker" do
  version "8.2.4"
  sha256 "5176424267508b37220b913e609760b13413c781ef8cf610d87f4b6fa86c95b1"

  url "https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip",
          must_contain: version.no_dots
  name "DiskCatalogMaker"
  desc "Toast-bundled version of DiskCatalogMaker"
  homepage "https://diskcatalogmaker.com/"

  app "DiskCatalogMaker.app"
end
