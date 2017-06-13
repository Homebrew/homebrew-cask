cask 'meld' do
  version '3.16.0-r1,osx-9'
  sha256 '324e096e0253e8ad4237f64a90cdda200fe427db8cf7ebc78143fc98e2d33ebc'

  # github.com/yousseb/meld was verified as official when first introduced to the cask
  url "https://github.com/yousseb/meld/releases/download/#{version.after_comma}/meldmerge.dmg"
  appcast 'https://github.com/yousseb/meld/releases.atom',
          checkpoint: 'ef52bbf506323d079d2d1d7d2767ba9bf70944996202da672cf19e0c684af82d'
  name 'Meld for OSX'
  homepage 'https://yousseb.github.io/meld/'

  app 'Meld.app'
  binary "#{appdir}/Meld.app/Contents/MacOS/Meld", target: 'meld'
end
