cask 'cocoapacketanalyzer' do
  version '1.50'
  sha256 'cd6549fb466fb73f5e22c82112d708513dfa903b151167f2d6112d9117efb017'

  url "http://tastycocoabytes.com/_downloads/CPA_#{version.no_dots}.dmg"
  appcast 'http://www.tastycocoabytes.com/cpa/updates/appcasting.php',
          checkpoint: '7de1cd4c3d499c5ece7441cdc66c9c729ff12648c3528cd2fa7da907660f443e'
  name 'Cocoa Packet Analyzer'
  homepage 'http://www.tastycocoabytes.com/cpa/'
  license :gratis

  app 'CocoaPacketAnalyzer.app'
end
