cask 'beotsmusic' do
  version '0.8'
  sha256 '66c1483307793e2f0067dff631d1d593933d1657c50698cff78a34a725da603f'

  # github.com/kiding/beotsmusic was verified as official when first introduced to the cask
  url "https://github.com/kiding/beotsmusic/releases/download/#{version}/BeotsMusic.dmg"
  appcast 'https://github.com/kiding/beotsmusic/releases.atom',
          checkpoint: '58053ecb7f438e794ec2a78ea671f29736a54098d0847a91cf5c67f4e5b7eccf'
  name 'BeotsMusic'
  homepage 'http://beotsmusic.kiding.net/'
  license :mit

  app 'BeotsMusic.app'

  caveats do
    discontinued
  end
end
