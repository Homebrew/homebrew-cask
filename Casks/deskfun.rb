cask 'deskfun' do
  version '0.5.7'
  sha256 '4a3315d21350e118ea8fce934b7d500230c76680bc3345b59a9e86f90d2bb33f'

  url "http://www.furrysoft.de/download/DeskFun#{version}.zip"
  appcast 'http://www.furrysoft.de/appcast/DeskFun.xml'
  name 'DeskFun'
  homepage 'http://www.furrysoft.de/?page=deskfun'

  app 'DeskFun.app'
end
