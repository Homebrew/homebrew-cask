cask 'cocoapacketanalyzer' do
  version '1.50'
  sha256 '8d99bbc6f51da98cf6466a1e8fef1d5e57211a2abee417a6ecb2e725a86982b2'

  url "http://tastycocoabytes.com/_downloads/CPA_#{version.no_dots}.dmg"
  appcast 'http://www.tastycocoabytes.com/cpa/updates/appcasting.php',
          checkpoint: 'b84bef28c187d4e9dc3f47c80e2958d10ba170acb7771cde677c4499a0c26aa4'
  name 'Cocoa Packet Analyzer'
  homepage 'http://www.tastycocoabytes.com/cpa/'
  license :gratis

  app 'CocoaPacketAnalyzer.app'
end
