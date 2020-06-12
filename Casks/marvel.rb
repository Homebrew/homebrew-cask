cask 'marvel' do
  version '9.4'
  sha256 'ccecbf0dff8f656b06482de5adb790f0e91a2b4193c923510259ffb90fc42078'

  # storage.googleapis.com/sketch-plugin/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
