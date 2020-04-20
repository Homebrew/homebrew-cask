cask 'marvel' do
  version '9.1.3'
  sha256 '6550fb4b187b326e5fef61268882b1f703e25910f08f847fd8dc165cb4f10844'

  # storage.googleapis.com/sketch-plugin/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
