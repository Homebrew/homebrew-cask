cask :v1 => 'sonic-pi' do
  version '2.7.0'
  sha256 '8a02d029273a3906b4761e2d36d64d34f0c4aff4fed4253658f0dc1c0f219ff9'

  url "http://sonic-pi.net/files/releases/0#{version}/Sonic-Pi-for-Mac-v#{version}.dmg"
  name 'Sonic Pi'
  homepage 'http://sonic-pi.net/'
  license :mit

  app 'Sonic Pi.app'
end
