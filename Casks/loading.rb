cask 'loading' do
  version :latest
  sha256 :no_check

  url 'http://bonzaiapps.com/loading/Loading.zip'
  appcast 'http://bonzaiapps.com/loading/update.xml',
          :sha256 => 'f5362a61ac1a44bdf60733230d127df231d65723d1e4e23928ac620950911a7c'
  name 'Loading'
  homepage 'http://bonzaiapps.com/loading/'
  license :bsd

  app 'Loading.app'
end
