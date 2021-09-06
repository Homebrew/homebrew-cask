cask "lego-digital-designer" do
  version "4.3.11"
  sha256 "48d32b97c1ee65ad18a1206a1bfe253a03565ca464bc4c0c6be4fe2b453d55e1"

  url "https://www.lego.com/assets/franchisesites/ldd/installer/SetupLDD-MAC-#{version.dots_to_underscores}.zip"
  name "Lego Digital Designer"
  desc "Build models using virtual Lego bricks"
  homepage "https://www.lego.com/en-us/ldd"

  livecheck do
    url "https://www.lego.com/en-us/ldd/download"
    strategy :page_match do |page|
      v = page[%r{href=.*?/SetupLDD-MAC-(\d+(?:_\d+)*)\.zip}i, 1]
      v.tr("_", ".")
    end
  end

  depends_on macos: "<= :mojave"

  pkg "LDD.pkg"

  uninstall pkgutil: "com.LEGO.LDD"
end
