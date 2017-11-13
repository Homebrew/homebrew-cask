cask 'kitematic' do
  version '0.17.2'
  sha256 '5a7c569d96461199dfb96bbb0df40452fe71698fd624b9e36a3edfd6228dacca'

  # github.com/docker/kitematic was verified as official when first introduced to the cask
  url "https://github.com/docker/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/docker/kitematic/releases.atom',
          checkpoint: 'c9dbc8608ef45d697ebd2279781750acdde28da1ae4c5f74fc2891c894be9fe0'
  name 'Kitematic'
  homepage 'https://kitematic.com/'

  app 'Kitematic (Beta).app'

  zap delete: [
                '~/Kitematic',
                '~/Library/Application Support/Kitematic',
                '~/Library/Caches/Kitematic',
                '~/Library/Preferences/com.electron.kitematic_(beta).plist',
                '~/Library/Saved Application State/com.electron.kitematic_(beta).savedState',
              ]
end
