cask :v1 => 'dockmod' do
  version '2.04'
  sha256 '86c92aa446d436296a800ee832466afa845048316a09df15d0e793f5a4cad55d'

  url "http://spyresoft.com/dockmod/download.php?version=#{version}"
  appcast 'http://spyresoft.com/dockmod/updates.xml',
          :sha256 => 'dd16b1284504bd43dbe9581508966061002b931b57cd48f30c844dcaaa5f7bd7'
  homepage 'http://spyresoft.com/dockmod/'
  license :unknown    # todo: improve this machine-generated value

  app 'DockMod.app'
end
