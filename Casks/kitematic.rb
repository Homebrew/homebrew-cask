cask 'kitematic' do
  version '0.12.0'
  sha256 '0d6770197ed1db1c9a653c78bc51bb0d1483882233cf2d2bf688609b1a5251ef'

  # github.com/docker/kitematic was verified as official when first introduced to the cask
  url "https://github.com/docker/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/docker/kitematic/releases.atom',
          checkpoint: 'eec5e42824a67b64e2575b5bd1af8f1841d2bf4920d20aa21a5f363eec0e322b'
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
