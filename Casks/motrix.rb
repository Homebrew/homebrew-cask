cask 'motrix' do
  version '1.4.1'
  sha256 'e2250db04b7dcb93fb5fde90ea82fee2cfd6c621c6253cd7535a2630b9a5632c'

  # github.com was verified as official when first introduced to the cask
  url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}.dmg"
  appcast 'https://github.com/agalwood/Motrix/releases.atom'
  name 'Motrix'
  homepage 'https://motrix.app/'

  app 'Motrix.app'

  zap trash: [
               '~/Library/Application Support/Motrix',
               '~/Library/Preferences/net.agalwood.Motrix.plist',
               '~/Library/Saved Application State/net.agalwood.Motrix.savedState',
               '~/Library/Logs/Motrix',
               '~/Library/Caches/net.agalwood.Motrix',
             ]
end
