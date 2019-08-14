cask 'lastpass' do
  version '4.31.1'
  sha256 'b35fec64bd6528918827759bb62454bc4410e2d3c32eb03df999e6a106de5225'

  url 'https://download.cloud.lastpass.com/mac/LastPass.dmg'
  appcast 'https://download.cloud.lastpass.com/mac/AppCast.xml'
  name 'LastPass'
  homepage 'https://www.lastpass.com/'

  depends_on macos: '>= :sierra'

  app 'LastPass.app'
end
