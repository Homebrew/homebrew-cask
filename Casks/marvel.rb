cask 'marvel' do
  version '9.1.2'
  sha256 '92713ebaa974e60f253566da27d76ef90056d378c1376d501e0918a7156cf2a0'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
