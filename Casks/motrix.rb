cask 'motrix' do
  version '1.2.2'
  sha256 'b4e6b1145ff3abb936d7284ae7f65bc7d1d0fa7ac72206122b4bd09e2d58dc64'

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
