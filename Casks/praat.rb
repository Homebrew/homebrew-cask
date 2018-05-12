cask 'praat' do
  version '6.0.40'
  sha256 '117531be1476545d5f70a032dedb09a748117fd9a6aa0d0c3da984a6c17d6b4f'

  # github.com/praat/praat/releases was verified as official when first introduced to the cask
  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac64.dmg"
  appcast 'https://github.com/praat/praat/releases.atom',
          checkpoint: 'c65fb16eb92e1aab257a9096fd1f2a919223a16c5d850aec8ce69daff0431e68'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'

  app 'Praat.app'
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
end
