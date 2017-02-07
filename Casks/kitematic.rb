cask 'kitematic' do
  version '0.13.0'
  sha256 '3c73b009603627f7d989af78803811abb0475907ffc01563dccc981e954fe506'

  # github.com/docker/kitematic was verified as official when first introduced to the cask
  url "https://github.com/docker/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  appcast 'https://github.com/docker/kitematic/releases.atom',
          checkpoint: 'd446960ee00ae0800790bae9672640274e26369ac0aa2afc38eb94d64949708b'
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
