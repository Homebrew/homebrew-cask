cask :v1 => 'gitter' do
  version '1.162'
  sha256 'bb1374419f4166954b0472999bb14c808bbd1b1e169c058fea365972f3562068'

  url "http://update.gitter.im/osx/Gitter-#{version}.dmg"
  appcast 'http://update.gitter.im/osx/appcast.xml',
          :sha256 => 'd9bda3654a9aed873e798fd1e514db93247f1ab534056306d421a5a7de2ac2d3'
  homepage 'https://gitter.im/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Gitter.app'
end
