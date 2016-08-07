cask 'loading' do
  version '1.2.4'
  sha256 'fe741c2a4c64cce0aa795eace1fcb2fe08c5bf3333e097406f45b52aa6f8d86c'

  url 'http://bonzaiapps.com/loading/Loading.zip'
  appcast 'http://bonzaiapps.com/loading/update.xml',
          checkpoint: 'b6555c1e1088889ff982cabfeaa5d7dec877b8ef4a1cd2828a08d51f58ba726b'
  name 'Loading'
  homepage 'http://bonzaiapps.com/loading/'
  license :bsd

  app 'Loading.app'
end
