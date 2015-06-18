cask :v1 => 'loading' do
  version :latest
  sha256 :no_check

  url 'http://bonzaiapps.com/loading/Loading.zip'
  name 'Loading'
  appcast 'http://bonzaiapps.com/loading/update.xml',
          :sha256 => '4914e37120428d0f85c54959b027cb0ae3e9b50f9c70a1eb00b985b672756c9e'
  homepage 'http://bonzaiapps.com/loading/'
  license :bsd

  app 'Loading.app'
end
