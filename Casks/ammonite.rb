cask 'ammonite' do
  version '1.13'
  sha256 '1a76406380fe633b475539b8238fdb4dd7667572caa44544bcd0dc110d636962'

  url "http://www.soma-zone.com/download/files/Ammonite_#{version}.tbz"
  appcast 'http://www.soma-zone.com/Ammonite/a/appcast.xml',
          :sha256 => 'a33a2b488a7af224b492e6e85915d2c4a1433c1daec06ffee7cca8c193a48b54'
  name 'Ammonite'
  homepage 'http://www.soma-zone.com/Ammonite/'
  license :closed

  app 'Ammonite.app'
end
