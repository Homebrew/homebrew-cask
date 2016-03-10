cask 'shotcut' do
  version '16.03.01'
  sha256 '26e4f7af11aae1e76e15196051170e86f4dc47d31678d589723c3c1e86095fe9'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '58bcc1eca5c700efeb88b8a63ef5b6751d4a5a25e6e3dc81bc8810143d4fbfdb'
  name 'Shotcut'
  homepage 'http://www.shotcut.org/'
  license :gpl

  app 'Shotcut.app'
end
