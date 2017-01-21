cask 'meld' do
  version '3.16.0-r1,osx-9'
  sha256 '324e096e0253e8ad4237f64a90cdda200fe427db8cf7ebc78143fc98e2d33ebc'

  # github.com/yousseb/meld was verified as official when first introduced to the cask
  url "https://github.com/yousseb/meld/releases/download/#{version.after_comma}/meldmerge.dmg"
  appcast 'https://github.com/yousseb/meld/releases.atom',
          checkpoint: '4c9b17456ea505a7490456e40b96b980ae3295ad844fed7e71ac1c091787c250'
  name 'Meld for OSX'
  homepage 'https://yousseb.github.io/meld/'

  app 'Meld.app'
end
