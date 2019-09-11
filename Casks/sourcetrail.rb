cask 'sourcetrail' do
  version '2019.3.46'
  sha256 'd0440bb4b31fe0e5d9e638deb6c36ba0b1bc6f4cdabd7214eb65b6cdec64ecb6'

  url "https://www.sourcetrail.com/downloads/#{version}/osx/64bit"
  appcast 'https://raw.githubusercontent.com/CoatiSoftware/SourcetrailBugTracker/master/README.md'
  name 'Sourcetrail'
  homepage 'https://www.sourcetrail.com/'

  app 'Sourcetrail.app'
end
