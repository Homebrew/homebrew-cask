cask 'motrix' do
  version '1.1.3'
  sha256 '489c924c6c850a3a60943f180256ff30eeacfdd73f4773f0da861d5fc99c1792'

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
