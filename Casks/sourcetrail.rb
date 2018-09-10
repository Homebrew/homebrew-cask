cask 'sourcetrail' do
  version '2018.3.55'
  sha256 '4e4fc500c8cd1a6a408f7314b3a47ddf3c1651acb44e6791b7a3d55048c2b45f'

  url "https://www.sourcetrail.com/downloads/#{version}/osx/64bit"
  appcast 'https://raw.githubusercontent.com/CoatiSoftware/SourcetrailBugTracker/master/README.md'
  name 'Sourcetrail'
  homepage 'https://www.sourcetrail.com/'

  app 'Sourcetrail.app'
end
