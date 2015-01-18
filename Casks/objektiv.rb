cask :v1 => 'objektiv' do
  version :latest
  sha256 :no_check

  url 'http://nthloop.com/objektiv/objektiv-latest.zip'
  appcast 'http://nthloop.com/objektiv/appcast.xml'
  name 'Objektiv'
  homepage 'http://nthloop.github.io/Objektiv/'
  license :oss

  app 'Objektiv.app'
end
