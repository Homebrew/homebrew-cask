cask 'sonic-pi' do
  version '2.9.0'
  sha256 'c9dcf6a9d05204b8cb51244f51f083ed5e68d36428814c768af752f4ff3686fa'

  url "http://sonic-pi.net/files/releases/v#{version}/Sonic-Pi-for-Mac-v#{version}.dmg"
  name 'Sonic Pi'
  homepage 'http://sonic-pi.net/'
  license :mit

  app 'Sonic Pi.app'
end
