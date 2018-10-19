cask 'kitematic' do
  version '0.17.5'
  sha256 'dd697ee05d520e9dbbddb6177ca66a84a02eceb863d24845d1f787d226036e9d'

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
