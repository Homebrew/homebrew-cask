cask 'sourcetrail' do
  version '2018.3.13'
  sha256 '9d3f7d04ed167b662446c0e497d50abbcada280680a60ea589a7c42b989be609'

  url "https://www.sourcetrail.com/downloads/#{version}/osx/64bit"
  appcast 'https://raw.githubusercontent.com/CoatiSoftware/SourcetrailBugTracker/master/README.md'
  name 'Sourcetrail'
  homepage 'https://www.sourcetrail.com/'

  app 'Sourcetrail.app'
end
