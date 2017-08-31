cask 'beotsmusic' do
  version '0.8'
  sha256 '66c1483307793e2f0067dff631d1d593933d1657c50698cff78a34a725da603f'

  # github.com/kiding/beotsmusic was verified as official when first introduced to the cask
  url "https://github.com/kiding/beotsmusic/releases/download/#{version}/BeotsMusic.dmg"
  appcast 'https://github.com/kiding/beotsmusic/releases.atom',
          checkpoint: 'a3d8588b8a84346c5831e7175f86d50336af540b3eece41a4741b9b38b1d0794'
  name 'BeotsMusic'
  homepage 'http://beotsmusic.kiding.net/'

  app 'BeotsMusic.app'

  caveats do
    discontinued
  end
end
