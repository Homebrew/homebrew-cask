cask 'cookie' do
  version '5.2'
  sha256 'bbcd265dfd5ae11f694481208c45cc67944e74d2af9a478cd9d3dd727d3969d9'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.zip"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: '6fed71094b02eb77b3fb683f0ee409b9288e56d9e23ff7a74c80b312ea0377ae'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'

  app 'Cookie.app'
end
