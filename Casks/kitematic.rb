cask 'kitematic' do
  version '0.17.2'
  sha256 '5a7c569d96461199dfb96bbb0df40452fe71698fd624b9e36a3edfd6228dacca'

  # github.com/docker/kitematic was verified as official when first introduced to the cask
  url "https://github.com/docker/kitematic/releases/download/#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/docker/kitematic/releases.atom',
          checkpoint: '2965b3453eca2649575ec9b6fa255345b295485111f3e8386da50a47cf81bc50'
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
