cask :v1 => 'liteicon' do
  version '3.6.2'
  sha256 'b9b12c02e69c38f983568a2231d0bd85690839736b1e5595a7d3358c2c7cf304'

  url "http://www.freemacsoft.net/downloads/LiteIcon_#{version}.zip"
  appcast 'http://www.freemacsoft.net/liteicon/updates.xml',
          :sha256 => 'cbaf744ac1473a475f81af1191005ba3307caa501e3a4541039ad836ce774631'
  name 'LiteIcon'
  homepage 'http://www.freemacsoft.net/liteicon/'
  license :gratis

  app 'LiteIcon.app'
end
