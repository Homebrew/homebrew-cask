cask 'marvel' do
  version '8.1.9'
  sha256 '9db6eadd599fe601326274728fca5224bde49bb2ea271e79d2a703ce51c833ed'

  # storage.googleapis.com/sketch-plugin was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
