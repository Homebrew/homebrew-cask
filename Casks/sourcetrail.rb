cask 'sourcetrail' do
  version '2019.2.39'
  sha256 '4ba6b422ca7027acd94325a1425eaf324a567107a8a0ad6ee37521336370ed37'

  url "https://www.sourcetrail.com/downloads/#{version}/osx/64bit"
  appcast 'https://raw.githubusercontent.com/CoatiSoftware/SourcetrailBugTracker/master/README.md'
  name 'Sourcetrail'
  homepage 'https://www.sourcetrail.com/'

  app 'Sourcetrail.app'
end
