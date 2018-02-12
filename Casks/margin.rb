cask 'margin' do
  version :latest
  sha256 :no_check

  url 'http://www.marginsoftware.de/downloads/leonArdo-osx.dmg'
  name 'margin'
  homepage 'http://www.marginsoftware.de/'

  app 'leonardo.app', target: 'margin.app'
end
