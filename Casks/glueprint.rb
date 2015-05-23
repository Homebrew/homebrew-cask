cask :v1 => 'glueprint' do
  version '1.1'
  sha256 '3a11d1150dd00b0e880ea0543aafc1bba5756a27f896a5e151a10d920595e747'

  url "http://glueprintapp.com/static/download/GluePrint-#{version}.app.zip"
  name 'GluePrint'
  appcast 'http://glueprint-update.s3-website-us-east-1.amazonaws.com/appcast.xml',
          :sha256 => 'd356a0f32007b1fbd5238e1c5cff91b61f9f847ba4efe166badf468c5d7d76d1'
  homepage 'http://glueprintapp.com/'
  license :gratis

  app 'GluePrint.app'
end
