cask 'deskfun' do
  version '0.5.7'
  sha256 '4a3315d21350e118ea8fce934b7d500230c76680bc3345b59a9e86f90d2bb33f'

  url "https://www.furrysoft.de/download/DeskFun#{version}.zip"
  appcast 'https://www.furrysoft.de/appcast/DeskFun.xml'
  name 'DeskFun'
  homepage 'https://www.furrysoft.de/?page=deskfun'

  app 'DeskFun.app'
end
