cask "diskcatalogmaker" do
  version "8.3.1"
  sha256 :no_check

  url "https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip"
  name "DiskCatalogMaker"
  desc "Toast-bundled version of DiskCatalogMaker"
  homepage "https://diskcatalogmaker.com/"

  livecheck do
    url "https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip"
    strategy :header_match do |headers|
      headers["location"][/DiskCatalogMaker(\d+).zip/i, 1].split("", 3).join(".")
    end
  end

  app "DiskCatalogMaker.app"
end
