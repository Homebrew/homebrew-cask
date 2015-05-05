cask :v1 => 'loading' do
  version :latest
  sha256 :no_check

  url 'http://bonzaiapps.com/loading/Loading.zip'
  name 'Loading'
  homepage 'http://bonzaiapps.com/loading/'
  license :bsd

  app 'Loading.app'
end
