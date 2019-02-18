cask 'sourcetrail' do
  version '2019.1.11'
  sha256 '918568593e21d6c2197ed61138357fcdadcde1a958da6a9fa76b2cee7d688d74'

  url "https://www.sourcetrail.com/downloads/#{version}/osx/64bit"
  appcast 'https://raw.githubusercontent.com/CoatiSoftware/SourcetrailBugTracker/master/README.md'
  name 'Sourcetrail'
  homepage 'https://www.sourcetrail.com/'

  app 'Sourcetrail.app'
end
