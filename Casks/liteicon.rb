cask :v1 => 'liteicon' do
  version '3.6.1'
  sha256 'ee999dd43330e32968bb24cb5dbbdcb223e6eed30a3476951f6e108d988435b3'

  url "http://www.freemacsoft.net/downloads/LiteIcon_#{version}.zip"
  appcast 'http://www.freemacsoft.net/liteicon/updates.xml',
          :sha256 => 'cbaf744ac1473a475f81af1191005ba3307caa501e3a4541039ad836ce774631'
  name 'LiteIcon'
  homepage 'http://www.freemacsoft.net/liteicon/'
  license :gratis

  app 'LiteIcon.app'
end
