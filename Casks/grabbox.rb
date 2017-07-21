cask 'grabbox' do
  version '2.0.0'
  sha256 '7d8d01aff457666380c38c1a8799c64851c90dc1d5c84f5697f55cfae6b27036'

  url "https://grabbox.bitspatter.com/updates/GrabBox-#{version}.zip"
  appcast 'https://grabbox.bitspatter.com/updates/appcast.xml',
          checkpoint: '3a10ed571d39005e4b3af39c3d56b6ce5c181bfcf3615c0478df6f126fab5548'
  name 'GrabBox'
  homepage 'https://grabbox.bitspatter.com/'

  app 'GrabBox.app'
end
