cask 'sourcetrail' do
  version '2018.4.45'
  sha256 '79ad9a38559e5ef7e3a1a1228d4f06fb3bfd8443e63418695a24385647ada9ac'

  url "https://www.sourcetrail.com/downloads/#{version}/osx/64bit"
  appcast 'https://raw.githubusercontent.com/CoatiSoftware/SourcetrailBugTracker/master/README.md'
  name 'Sourcetrail'
  homepage 'https://www.sourcetrail.com/'

  app 'Sourcetrail.app'
end
