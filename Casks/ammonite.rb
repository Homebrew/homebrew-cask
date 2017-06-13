cask 'ammonite' do
  version '1.13.2'
  sha256 'bf3df90f301ecfb4282a495441b1e7d1f10d65b476997ece78a4a452bab1deb8'

  url "http://www.soma-zone.com/download/files/Ammonite_#{version}.tbz"
  appcast 'http://www.soma-zone.com/Ammonite/a/appcast.xml',
          checkpoint: 'c781ee340426a5a81d426d8bbfbabd6be15a3e5f24de5b2639100d4f2c09685d'
  name 'Ammonite'
  homepage 'http://www.soma-zone.com/Ammonite/'

  app 'Ammonite.app'
end
