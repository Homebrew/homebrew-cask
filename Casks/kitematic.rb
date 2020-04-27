cask 'kitematic' do
  version '0.17.11'
  sha256 '52906fd3fc98d8ce94ff24e19714879024fb7d07a2daae4e59187ec969cd2ddc'

  # github.com/docker/kitematic/ was verified as official when first introduced to the cask
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
