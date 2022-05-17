cask "airmedia" do
  version "4.1.12"
  sha256 "bc73d6f1fb812ec4a652c6f356f326e8500382b6e0ee8f8a4dc5c8b7a0002267"

  url "https://www.crestron.com/software_files_public/am-100/airmedia_osx_#{version}_guest.dmg"
  name "Crestron AirMedia"
  desc "Touchless presentation and collaboration software"
  homepage "https://www.crestron.com/microsites/airmedia-mobile-wireless-hd-presentations"

  livecheck do
    url "https://www.crestron.com/Products/Featured-Solutions/AirMedia/Airmedia-Apps"
    strategy :page_match do |page|
      v = page[/airmedia_osx_(\d+(?:_\d+)+)_guest/i, 1]
      v&.tr("_", ".")
    end
  end

  app "Crestron AirMedia.app"
end
