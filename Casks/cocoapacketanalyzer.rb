cask 'cocoapacketanalyzer' do
  version '1.31'
  sha256 'fc3586868fcf90e3ca766c31dbf184de78e5c907210dfdabbd13a831712fc864'

  url "http://tastycocoabytes.com/_downloads/CPA_#{version.delete('.')}.dmg"
  appcast 'http://www.tastycocoabytes.com/cpa/updates/appcasting.php',
          checkpoint: '9813fa52c69e2e54f5ba108352aa7d4a570a136a66dd4d94fb9b10ff959430e3'
  name 'Cocoa Packet Analyzer'
  homepage 'http://www.tastycocoabytes.com/cpa/'
  license :gratis

  app 'CocoaPacketAnalyzer.app'
end
