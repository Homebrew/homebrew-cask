cask :v1 => 'hall' do
  version '1.0.5'
  sha256 '70e8db2d6f8336d656ad5faa34125ecd76ed2b5322e654180fb9459dbcfa1aec'

  url "https://hall.com/desktop/osx/installers/Hall_#{version.gsub('.','_')}.dmg"
  homepage 'https://hall.com/download-hall/hall-for-mac'
  license :unknown    # todo: improve this machine-generated value

  pkg 'Hall.pkg'

  uninstall :pkgutil => 'com.companyline.hall.desktop',
            :delete  => '/Applications/Hall.app'
end
