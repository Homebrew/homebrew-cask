class Hall < Cask
  url 'https://hall.com/desktop/osx/installers/Hall_1_0_5.dmg'
  homepage 'https://hall.com/download-hall/hall-for-mac'
  version '1.0.5'
  sha256 '70e8db2d6f8336d656ad5faa34125ecd76ed2b5322e654180fb9459dbcfa1aec'
  install 'Hall.pkg'
  uninstall :pkgutil => 'com.companyline.hall.desktop', :files => '/Applications/Hall.app'
end
