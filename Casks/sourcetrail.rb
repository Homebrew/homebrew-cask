cask 'sourcetrail' do
  version '2019.2.25'
  sha256 '13caae8924683c9edb07325697e2c55279f3c455f089308021757971f8429730'

  url "https://www.sourcetrail.com/downloads/#{version}/osx/64bit"
  appcast 'https://raw.githubusercontent.com/CoatiSoftware/SourcetrailBugTracker/master/README.md'
  name 'Sourcetrail'
  homepage 'https://www.sourcetrail.com/'

  app 'Sourcetrail.app'
end
