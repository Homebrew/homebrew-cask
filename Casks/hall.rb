class Hall < Cask
  url 'https://hall.com/desktop/osx/installers/Hall_1_0_5.dmg'
  homepage 'https://hall.com/download-hall/hall-for-mac'
  version '1.0.5'
  sha1 '051a68743c1bd522530ac72d06427106b35220ea'
  install 'Hall.pkg'
  uninstall :pkgutil => 'com.companyline.hall.desktop', :files => '/Applications/Hall.app'
end
