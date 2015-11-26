cask :v1 => 'sonic-pi' do
  version '2.8.0'
  sha256 '7c6e6bdf400f29bc815477e3dad6100321b3c0fbd56be0db834df84482723464'

  url "http://sonic-pi.net/files/releases/0#{version}/Sonic-Pi-for-Mac-v#{version}.dmg"
  name 'Sonic Pi'
  homepage 'http://sonic-pi.net/'
  license :mit

  app 'Sonic Pi.app'
end
