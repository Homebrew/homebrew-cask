cask 'soundcleod' do
  version '0.18'
  sha256 '467761e18935787f2b1b89179236a31162521975b5104dfecb0869aec15403c9'

  url 'https://github.com/salomvary/soundcleod/raw/master/dist/SoundCleod.dmg'
  appcast 'https://github.com/salomvary/soundcleod/releases.atom',
          checkpoint: 'ef94d659ad0d1367225799c76d689f2f7231e9f9b05bdb1097052a8c6ab91f7f'
  name 'SoundCleod'
  homepage 'https://salomvary.github.io/soundcleod/'
  license :mit

  app 'SoundCleod.app'
end
