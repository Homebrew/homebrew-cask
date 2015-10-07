cask :v1 => 'dockmod' do
  if MacOS.release <= :mavericks
    version '2.04'
    sha256 '86c92aa446d436296a800ee832466afa845048316a09df15d0e793f5a4cad55d'
    appcast 'http://spyresoft.com/dockmod/updates.xml',
            :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  else
    version '3.01'
    sha256 '1d7582c5ec59dd4dc15a07db10042b8654ff0047091bb401e98a4bd6810699bb'
    appcast 'http://spyresoft.com/dockmod/updates3.xml',
            :sha256 => 'd1d67bdc4a750b2337cc1308effc61973ecbf41f91acc23b70d95f3e57e84b84'
  end

  url "http://spyresoft.com/dockmod/download.php?version=#{version}"
  name 'DockMod'
  homepage 'http://spyresoft.com/dockmod/'
  license :freemium

  app 'DockMod.app'
end
