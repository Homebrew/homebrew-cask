cask :v1 => 'beotsmusic' do
  version '0.8'
  sha256 '66c1483307793e2f0067dff631d1d593933d1657c50698cff78a34a725da603f'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/kiding/beotsmusic/releases/download/#{version}/BeotsMusic.dmg"
  name 'BeotsMusic'
  appcast 'https://raw.github.com/kiding/beotsmusic/master/appcast.xml',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  homepage 'http://beotsmusic.kiding.net/'
  license :mit

  app 'BeotsMusic.app'
end
