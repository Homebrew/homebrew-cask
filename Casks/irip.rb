cask 'irip' do
  version '2.1.8'
  sha256 '378130c09ed0b42eec738f755c9c29e3f26aa2f8f37d27cae2e95146038b468c'

  url "https://files.thelittleappfactory.com/iRip#{version.major}/iRip.zip"
  appcast "https://files.thelittleappfactory.com/iRip#{version.major}/appcast.xml",
          checkpoint: 'e934179f4e2cc9567565ae76ea1071cb735a2e92aa00893779f56aa31d6f7d5f'
  name 'iRip'
  homepage 'http://thelittleappfactory.com/irip/'

  app 'iRip.app'
end
