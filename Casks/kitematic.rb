cask 'kitematic' do
  version '0.17.8'
  sha256 '82faf111edf6e6da753f3ee04c8621c6a307891092feb04bcc5c814e8036ea1b'

  # github.com/docker/kitematic was verified as official when first introduced to the cask
  url "https://github.com/docker/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/docker/kitematic/releases.atom'
  name 'Kitematic'
  homepage 'https://kitematic.com/'

  app 'Kitematic.app'

  zap trash: [
               '~/Kitematic',
               '~/Library/Application Support/Kitematic',
               '~/Library/Caches/Kitematic',
               '~/Library/Logs/Kitematic',
               '~/Library/Preferences/com.electron.kitematic.plist',
               '~/Library/Preferences/com.electron.kitematic.helper.plist',
               '~/Library/Saved Application State/com.electron.kitematic.savedState',
             ]
end
