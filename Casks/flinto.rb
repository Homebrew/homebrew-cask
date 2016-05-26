cask 'flinto' do
  version '1.5.2'
  sha256 '6c1f6baa0341e3f65f614babfc94d1d754a21de6502bbee83c6f3a58a3ef192c'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'
  license :commercial

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*',
            delete:  '/Applications/FLinto.app'
end
