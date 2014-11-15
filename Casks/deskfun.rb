cask :v1 => 'deskfun' do
  version '0.5.7'
  sha256 '4a3315d21350e118ea8fce934b7d500230c76680bc3345b59a9e86f90d2bb33f'

  url "http://www.furrysoft.de/download/DeskFun#{version}.zip"
  appcast 'http://www.furrysoft.de/appcast/DeskFun.xml',
          :sha256 => '57ed0eb9f5e08f7879eb825012bfb2b8ad21387aad8b35adce4f6659eb1b7999'
  homepage 'http://www.furrysoft.de/?page=deskfun'
  license :unknown

  app 'DeskFun.app'
end
