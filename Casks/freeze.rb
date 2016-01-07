cask 'freeze' do
  version '1.3'
  sha256 'a93c7342b44bbd1e30acc2c9ed434785f78b602d297627d2ba05f7326d6231be'

  url 'https://freezeapp.net/download/Freeze.zip'
  appcast 'https://freezeapp.net/appcast.xml',
          :sha256 => '928237ec9bfca13666e922af26b965cb05f94e014937c32c14a3029c2b66c133'
  name 'Freeze'
  homepage 'https://freezeapp.net/'
  license :freemium

  app 'Freeze.app'
end
