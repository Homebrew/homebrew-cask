cask :v1 => 'hall' do
  version '1.0.5'
  sha256 '70e8db2d6f8336d656ad5faa34125ecd76ed2b5322e654180fb9459dbcfa1aec'

  url "https://hall.com/desktop/osx/installers/Hall_#{version.gsub('.','_')}.dmg"
  name 'Hall'
  appcast 'https://hall.com/desktop/osx/appcast.xml',
          :sha256 => '8205b01d6dbb320cab724d9592074c8fae07bd46ff464ef91a8d543285a5d7f7'
  homepage 'https://hall.com/download-hall/hall-for-mac'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Hall.pkg'

  uninstall :pkgutil => 'com.companyline.hall.desktop',
            :delete  => '/Applications/Hall.app'
end
