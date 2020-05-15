cask 'motrix' do
  version '1.5.10'
  sha256 '14a52d68ace85c6c644c5d7406b0c5ec9acd13cd75bc714ad975c0832ac6f9cc'

  # github.com/ was verified as official when first introduced to the cask
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
