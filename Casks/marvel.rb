cask 'marvel' do
  version '9.6'
  sha256 'f5a0a51bb9c62d33b94a61c93350b7aa4461edb2230452a3935253b1a17ed0a1'

  # storage.googleapis.com/sketch-plugin/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
