cask 'glueprint' do
  version '1.1'
  sha256 '3a11d1150dd00b0e880ea0543aafc1bba5756a27f896a5e151a10d920595e747'

  url "http://glueprintapp.com/static/download/GluePrint-#{version}.app.zip"
  appcast 'http://glueprint-update.s3-website-us-east-1.amazonaws.com/appcast.xml',
          checkpoint: '8028e5a3bf0df90d01fedb100130816570a7baa44dbd34163df95ff1b5f1fd87'
  name 'GluePrint'
  homepage 'http://glueprintapp.com/'

  app 'GluePrint.app'
end
