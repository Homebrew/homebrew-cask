cask 'praat' do
  version '6.0.29'
  sha256 'b9dd8f7740fb76529b2c9ea77b77fd1dd75e72dc981d2274bfa21e38aff63661'

  # github.com/praat/praat/releases was verified as official when first introduced to the cask
  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac64.dmg"
  appcast 'https://github.com/praat/praat/releases.atom',
          checkpoint: 'fbbaffeae204e976fe348e78bedcf41f49dc93c2be7f3f43b7d129d99e43f85b'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'

  app 'Praat.app'
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
end
