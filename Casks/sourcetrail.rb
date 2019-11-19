cask 'sourcetrail' do
  version '2019.4.61'
  sha256 'c296b7d0ad486eed8a0f252d392fb30325820458b7a88c30cc18dce4b62e5665'

  url "https://www.sourcetrail.com/downloads/#{version}/osx/64bit"
  appcast 'https://raw.githubusercontent.com/CoatiSoftware/SourcetrailBugTracker/master/README.md'
  name 'Sourcetrail'
  homepage 'https://www.sourcetrail.com/'

  app 'Sourcetrail.app'
end
