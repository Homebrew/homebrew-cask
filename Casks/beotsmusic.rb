cask :v1 => 'beotsmusic' do
  version '0.8'
  sha256 '66c1483307793e2f0067dff631d1d593933d1657c50698cff78a34a725da603f'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/kiding/beotsmusic/releases/download/#{version}/BeotsMusic.dmg"
  name 'BeotsMusic'
  appcast 'https://raw.github.com/kiding/beotsmusic/master/appcast.xml',
          :sha256 => '61f4f72620f655be40780dd5443f5a2d842bee9d6d6d36d4815734d8ccfe1df6'
  homepage 'http://beotsmusic.kiding.net/'
  license :mit

  app 'BeotsMusic.app'
end
