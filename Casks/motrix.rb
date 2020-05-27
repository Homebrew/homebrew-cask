cask 'motrix' do
  version '1.5.13'
  sha256 '98f760fe64159adce7de6bf401c68ba8653f754f7c966bb7770e596f4e9e94b0'

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
