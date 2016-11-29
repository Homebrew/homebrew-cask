cask 'cookie' do
  version '5.2.1'
  sha256 'cca57cc80e879297aab1490af0b2034fea56e31dc887c1377acc8c5962b5113b'

  url "https://sweetpproductions.com/products/cookie#{version.major}/Cookie#{version.major}.zip"
  appcast "https://sweetpproductions.com/products/cookie#{version.major}/appcast.xml",
          checkpoint: 'dc3ae52241c15fedeb65213cfb816a92436b22014b27c5bec708060c3aad71ad'
  name 'Cookie'
  homepage 'https://sweetpproductions.com/'

  app 'Cookie.app'
end
