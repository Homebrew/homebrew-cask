cask 'electrum' do
  version '3.0.5'
  sha256 'dd04e0cb0701af1a38cabe83607a66f5be8b89d3d13ad28bf6367627249270f8'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  appcast 'https://github.com/spesmilo/electrum/releases.atom',
          checkpoint: '1c7ddc706e9fcc142f66b7dedf88eeaad84bedb46e7d0a898b8efd46d79b4abe'
  name 'Electrum'
  homepage 'https://electrum.org/'
  gpg "#{url}.asc", key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'

  zap trash: [
               '~/.electrum',
               '~/Library/Preferences/Electrum.plist',
               '~/Library/Preferences/org.org.pythonmac.unspecified.Electrum.plist',
               '~/Library/Saved Application State/Electrum.savedState',
             ]
end
