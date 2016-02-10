cask 'soundcleod' do
  version '0.18'
  sha256 '467761e18935787f2b1b89179236a31162521975b5104dfecb0869aec15403c9'

  # github.com/salomvary/soundcleod was verified as official when first introduced to the cask
  url 'https://github.com/salomvary/soundcleod/raw/master/dist/SoundCleod.dmg'
  appcast 'https://github.com/salomvary/soundcleod/releases.atom',
          checkpoint: 'b580fcc8570596840f6a6e57316230c0a2f4bd7e6a718cd47655614a90b9b25a'
  name 'SoundCleod'
  homepage 'https://salomvary.github.io/soundcleod/'
  license :mit

  app 'SoundCleod.app'
end
