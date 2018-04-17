cask 'qfinder-pro' do
  version '2.6.0.0214'
  sha256 '84afbb7dbb5b309daf466bf74da588a16fa000d96c4b366be95b398317853fe7'

  url "http://download.qnap.com/Storage/Utility/QNAPQfinderProMac-#{version}.dmg"
  appcast 'http://update.qnap.com/SoftwareRelease.xml',
          checkpoint: '1ba97d1b6fda74f08a14e207f7a9a1bee01761f9cecea31fb9652bb2393636dc'
  name 'Qnap Qfinder Pro'
  homepage 'https://www.qnap.com/en/utilities#utliity_5'

  pkg 'Qfinder Pro.pkg'

  uninstall pkgutil: 'qnap.com.qfinder.*'
end
