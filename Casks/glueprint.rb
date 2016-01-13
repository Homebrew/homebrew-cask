cask 'glueprint' do
  version '1.1'
  sha256 '3a11d1150dd00b0e880ea0543aafc1bba5756a27f896a5e151a10d920595e747'

  url "http://glueprintapp.com/static/download/GluePrint-#{version}.app.zip"
  appcast 'http://glueprint-update.s3-website-us-east-1.amazonaws.com/appcast.xml',
          :checkpoint => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b856'
  name 'GluePrint'
  homepage 'http://glueprintapp.com/'
  license :gratis

  app 'GluePrint.app'
end
