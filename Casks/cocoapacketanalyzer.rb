cask 'cocoapacketanalyzer' do
  version '1.51'
  sha256 '8d1e27ce1f53cd393792df4ac9f87b2d51551e48ec912049b673a4700937534d'

  url "http://tastycocoabytes.com/_downloads/CPA_#{version.no_dots}.dmg"
  appcast 'http://www.tastycocoabytes.com/cpa/updates/appcasting.php',
          checkpoint: '381d5769dd82422e539c9076baa73877a1489b48b2393ba26651e39a8c2fc53d'
  name 'Cocoa Packet Analyzer'
  homepage 'http://www.tastycocoabytes.com/cpa/'

  app 'CocoaPacketAnalyzer.app'
end
