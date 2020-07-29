cask 'marvel' do
  version '9.4.1'
  sha256 '00b47b07854205301dd1a1596acbc37bb68afee682fafa1cef2f17df4c0d7012'

  # storage.googleapis.com/sketch-plugin/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
