cask 'cocoapacketanalyzer' do
  version '1.31'
  sha256 'fc3586868fcf90e3ca766c31dbf184de78e5c907210dfdabbd13a831712fc864'

  url "http://tastycocoabytes.com/_downloads/CPA_#{version.delete('.')}.dmg"
  appcast 'http://www.tastycocoabytes.com/cpa/updates/appcasting.php',
          checkpoint: '01ba4719c80b6fe911b091a7c05124b64eeece964e09c058ef8f9805daca546b'
  name 'Cocoa Packet Analyzer'
  homepage 'http://www.tastycocoabytes.com/cpa/'
  license :gratis

  app 'CocoaPacketAnalyzer.app'
end
