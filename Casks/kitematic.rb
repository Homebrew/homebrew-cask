cask 'kitematic' do
  version '0.17.7'
  sha256 '7a1c42058c05991c23df07b9af7f206da8d459aa701f7d0fd700e5c94f816e07'

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
