cask 'kitematic' do
  version '0.17.6'
  sha256 '827756c4b7de7b23b474aba12ed2b4a333d3a5f1b2fad5bc5819da405d72ed83'

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
               '~/Library/Preferences/com.electron.kitematic_(beta).plist',
               '~/Library/Saved Application State/com.electron.kitematic_(beta).savedState',
             ]
end
