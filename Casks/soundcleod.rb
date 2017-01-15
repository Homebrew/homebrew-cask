cask 'soundcleod' do
  version '1.1.7'
  sha256 '9f1f2bcab86eb80a78be9359742bd658e5452bfd6e4d37255ea139cb3e94f6b8'

  # github.com/salomvary/soundcleod was verified as official when first introduced to the cask
  url "https://github.com/salomvary/soundcleod/releases/download/v#{version}/SoundCleod-#{version}.dmg"
  appcast 'https://github.com/salomvary/soundcleod/releases.atom',
          checkpoint: '8f0ec9f128c4acbef1123286f7e868b73674986b80013f02b2aa80c4c9596cdb'
  name 'SoundCleod'
  homepage 'https://soundcleod.com/'

  app 'SoundCleod.app'
end
