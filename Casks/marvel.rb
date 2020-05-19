cask 'marvel' do
  version '9.2'
  sha256 '4bbea711eb3380ea25363edd31f77c9d107c06b4c07aff4956681a1754d24f79'

  # storage.googleapis.com/sketch-plugin/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/sketch-plugin/#{version}/Marvel.zip"
  appcast 'https://storage.googleapis.com/sketch-plugin/app.xml'
  name 'Marvel'
  homepage 'https://marvelapp.com/'

  app 'Marvel.app'
end
