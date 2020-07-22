cask 'kitematic' do
  version '0.17.12'
  sha256 '39e673d2760529fe05e57c213e7f0a5cbaaef1ea76911a3f8514276972f6579f'

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
