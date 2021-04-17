cask "airmedia" do
  version "4.1.2"
  sha256 "e96b36165378d2fec39d1994d4295cd27da83da505b12f4e3f5aefb5d160bd33"

  url "https://www.crestron.com/Crestron/media/Crestron/WidenResources/Web%20Miscellaneous/airmedia_osx_#{version.dots_to_underscores}_guest.zip"
  name "Crestron AirMedia"
  desc "Touchless presentation and collaboration software"
  homepage "https://www.crestron.com/microsites/airmedia-mobile-wireless-hd-presentations"

  livecheck do
    url "https://www.crestron.com/en-US/Products/Featured-Solutions/Airmedia"
    strategy :page_match do |page|
      v = page[%r{href=.*?/airmedia_osx_(\d+(?:_\d+)*)_guest\.zip}i, 1]
      v.tr("_", ".")
    end
  end

  container nested: "airmedia_osx_#{version}_guest.dmg"

  app "Crestron AirMedia.app"
end
