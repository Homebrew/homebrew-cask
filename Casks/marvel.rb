cask 'marvel' do
  version '8.3.2'
  sha256 'f820974aa1bf6a185dd0a3463532b2c6a9e20b08dcbeda9132b945cc97dd33f3'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
