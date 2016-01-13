cask 'freeze' do
  version '1.3'
  sha256 'a93c7342b44bbd1e30acc2c9ed434785f78b602d297627d2ba05f7326d6231be'

  url 'https://freezeapp.net/download/Freeze.zip'
  appcast 'https://freezeapp.net/appcast.xml',
          :checkpoint => '7bad6a0effc0633c76c8a5cf019bd6c36ff87865391652f3131e46141e8ccecb'
  name 'Freeze'
  homepage 'https://freezeapp.net/'
  license :freemium

  app 'Freeze.app'
end
