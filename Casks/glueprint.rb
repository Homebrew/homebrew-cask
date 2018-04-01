cask 'glueprint' do
  version '1.1'
  sha256 '3a11d1150dd00b0e880ea0543aafc1bba5756a27f896a5e151a10d920595e747'

  url "http://glueprintapp.com/static/download/GluePrint-#{version}.app.zip"
  appcast 'http://glueprint-update.s3-website-us-east-1.amazonaws.com/appcast.xml',
          checkpoint: 'be46de45c84e92be0c4d69c29ed4cc32f09ddc5ed2569bb005329a222e6e7695'
  name 'GluePrint'
  homepage 'http://glueprintapp.com/'

  app 'GluePrint.app'
end
