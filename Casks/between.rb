cask 'between' do
  version :latest
  sha256 :no_check

  url 'http://assets-pc.between.us/downloads/between-latest.dmg'
  appcast 'http://assets-pc.between.us/downloads/metadata-mac.xml'
  name 'Between'
  homepage 'https://between.us/'

  app 'Between.app'
end
