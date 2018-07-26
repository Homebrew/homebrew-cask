cask 'sourcetrail' do
  version '2018.2.77'
  sha256 '49b38996b54727571a343bc0bea20fd03299c065dd55f489e2834d32cf4305ce'

  url "https://www.sourcetrail.com/downloads/#{version}/osx/64bit"
  appcast 'https://raw.githubusercontent.com/CoatiSoftware/SourcetrailBugTracker/master/README.md'
  name 'Sourcetrail'
  homepage 'https://www.sourcetrail.com/'

  app 'Sourcetrail.app'
end
