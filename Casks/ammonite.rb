cask :v1 => 'ammonite' do
  version '1.13'
  sha256 '1a76406380fe633b475539b8238fdb4dd7667572caa44544bcd0dc110d636962'

  url "http://www.soma-zone.com/download/files/Ammonite_#{version}.tbz"
  name 'Ammonite'
  appcast 'http://www.soma-zone.com/Ammonite/a/appcast.xml',
          :sha256 => 'd8a28c27fff6cd47329846952eae3ac7d79f51139a222111f7b007794be795e8'
  homepage 'http://www.soma-zone.com/Ammonite/'
  license :closed

  app 'Ammonite.app'
end
