cask 'marvel' do
  version '9.1'
  sha256 '6fad0ad3794c8e9265532444a47e2ea5f845219f1fd62a64e8e78320fbe8bcb2'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
