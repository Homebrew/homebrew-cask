cask 'flinto' do
  version '2.1'
  sha256 '5ad0dd7433fe1d78a98c499055ab6fb017343f70df3d0aab62d770337d71b670'

  url "https://www.flinto.com/assets/Flinto-#{version}.dmg"
  name 'Flinto'
  homepage 'https://www.flinto.com/mac'

  app 'Flinto.app'

  uninstall pkgutil: 'com.flinto.*',
            delete:  '/Applications/FLinto.app'

  zap delete: '~/Library/Application Scripts/com.flinto.Flinto'
end
