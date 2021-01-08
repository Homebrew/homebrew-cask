cask "diskcatalogmaker" do
  version "8.3.2.1"
  sha256 :no_check

  url "https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip"
  name "DiskCatalogMaker"
  desc "Toast-bundled version of DiskCatalogMaker"
  homepage "https://diskcatalogmaker.com/"

  livecheck do
    url "https://download.diskcatalogmaker.com/zip/DiskCatalogMaker.zip"
    strategy :header_match do |headers|
      match = headers["location"].match(/DiskCatalogMaker(\d+)f?(\d+)\.zip/i)
      "#{match[1].split("", 3).join(".")}.#{match[2]}"
    end
  end

  app "DiskCatalogMaker.app"
end
