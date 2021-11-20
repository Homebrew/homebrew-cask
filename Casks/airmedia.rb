cask "airmedia" do
  version "4.1.4"
  sha256 "be04bd4cf0e08d39c6a2fe70f74fc6fb6216a658f658711f68a728b247dcae4e"

  url "https://www.crestron.com/software_files_public/am-100/airmedia_osx_#{version}_guest.dmg"
  name "Crestron AirMedia"
  desc "Touchless presentation and collaboration software"
  homepage "https://www.crestron.com/microsites/airmedia-mobile-wireless-hd-presentations"

  livecheck do
    url "https://www.crestron.com/Products/Featured-Solutions/AirMedia/Airmedia-Apps"
    strategy :page_match do |page|
      v = page[/airmedia_osx_(\d+(?:_\d+)*)_guest/i, 1]
      v&.tr("_", ".")
    end
  end

  app "Crestron AirMedia.app"
end
