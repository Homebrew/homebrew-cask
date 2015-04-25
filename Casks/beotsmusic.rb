cask :v1 => 'beotsmusic' do
  version '0.8'
  sha256 '66c1483307793e2f0067dff631d1d593933d1657c50698cff78a34a725da603f'

  url 'https://github.com/kiding/beotsmusic/releases/download/0.8/BeotsMusic.dmg'
  name 'BeotsMusic'
  homepage 'http://beotsmusic.kiding.net/'
  license :unknown

  app 'BeotsMusic.app'
end
