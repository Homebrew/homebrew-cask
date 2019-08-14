cask 'marvel' do
  version '8.3.5'
  sha256 '76ba5dfbab396de65448a33761cb940ab89f44de905c17816260e6fdfd4907ee'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
