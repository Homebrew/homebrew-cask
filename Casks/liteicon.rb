cask 'liteicon' do
  version '3.6.2'
  sha256 'b9b12c02e69c38f983568a2231d0bd85690839736b1e5595a7d3358c2c7cf304'

  url "https://www.freemacsoft.net/downloads/LiteIcon_#{version}.zip"
  appcast 'https://freemacsoft.net/liteicon/updates.xml',
          :sha256 => '56cfedb119ebb97fc50640f398a6c6385ff08745238742c7b83697c13d42cf58'
  name 'LiteIcon'
  homepage 'https://www.freemacsoft.net/liteicon/'
  license :gratis

  app 'LiteIcon.app'
end
