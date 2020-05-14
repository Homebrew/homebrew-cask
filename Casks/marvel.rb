cask 'marvel' do
  version '9.1.4'
  sha256 '5b7a922b757ba1b6bd283cb988014716d1e011ced9bd49990b7daa8e76987f6f'

  # storage.googleapis.com/sketch-plugin/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
