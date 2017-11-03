cask 'kitematic' do
  version '0.17.2'
  sha256 'f16ce273d15cb3e133f6f36eb0a152de7faaad49dc904259b40d649116c7c0ba'

  # github.com/docker/kitematic was verified as official when first introduced to the cask
  url "https://github.com/docker/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/docker/kitematic/releases.atom',
          checkpoint: '44b691b3c62380ff7e2d39424eb5bcc5070f29decaa29c3d59c7eee588983de3'
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
