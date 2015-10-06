cask :v1 => 'glueprint' do
  version '1.1'
  sha256 '3a11d1150dd00b0e880ea0543aafc1bba5756a27f896a5e151a10d920595e747'

  url "http://glueprintapp.com/static/download/GluePrint-#{version}.app.zip"
  name 'GluePrint'
  appcast 'http://glueprint-update.s3-website-us-east-1.amazonaws.com/appcast.xml',
          :sha256 => 'dea65afe4a2ae167b862f074f5d901a4aa24bdd498f6bddba2b2504a90c9a9f6'
  homepage 'http://glueprintapp.com/'
  license :gratis

  app 'GluePrint.app'
end
