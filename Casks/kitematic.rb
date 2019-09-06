cask 'kitematic' do
  version '0.17.8'
  sha256 '24f5c152047c92e09320bd2a2833e7d069c9ec34c6f7d2b0eed29c0818e8144b'

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
