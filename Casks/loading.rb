cask 'loading' do
  version :latest
  sha256 :no_check

  url 'http://bonzaiapps.com/loading/Loading.zip'
  appcast 'http://bonzaiapps.com/loading/update.xml',
          :checkpoint => 'b6555c1e1088889ff982cabfeaa5d7dec877b8ef4a1cd2828a08d51f58ba726b'
  name 'Loading'
  homepage 'http://bonzaiapps.com/loading/'
  license :bsd

  app 'Loading.app'
end
