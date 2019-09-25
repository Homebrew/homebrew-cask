cask 'kitematic' do
  version '0.17.9'
  sha256 '1c22a87b82c57f8c5d7b264c7ebb79bb243a9f34668b936c5237cbe4c0247e40'

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
