cask "airmedia" do
  version "4.1.14"
  sha256 "d082c5d2385ddfbc47c6da35e2130234fe18128cb658f1265c378b19fb6e8652"

  url "https://www.crestron.com/software_files_public/am-100/airmedia_osx_#{version}_guest.dmg"
  name "Crestron AirMedia"
  desc "Touchless presentation and collaboration software"
  homepage "https://www.crestron.com/microsites/airmedia-mobile-wireless-hd-presentations"

  livecheck do
    url "https://www.crestron.com/Products/Featured-Solutions/AirMedia/Airmedia-Apps"
    regex(%r{AirMedia[._-]OSx[._-]Guest[._-]Application/v?(\d+(?:-\d+)+)}i)
    strategy :page_match do |page, regex|
      page.scan(regex)&.map { |match| match[0].tr("-", ".") }
    end
  end

  depends_on macos: ">= :sierra"

  app "Crestron AirMedia.app"

  caveats do
    requires_rosetta
  end
end
