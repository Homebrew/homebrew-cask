cask 'marvel' do
  version '8.5.1'
  sha256 'fe2349371771f4d4f49239c6d742590c7516f48494b736514a2381349b1b63f4'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
