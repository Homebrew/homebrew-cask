cask 'glueprint' do
  version '1.1'
  sha256 '3a11d1150dd00b0e880ea0543aafc1bba5756a27f896a5e151a10d920595e747'

  url "http://glueprintapp.com/static/download/GluePrint-#{version}.app.zip"
  appcast 'http://glueprintapp.com/'
  name 'GluePrint'
  homepage 'http://glueprintapp.com/'

  app 'GluePrint.app'
end
