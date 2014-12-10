cask :v1 => 'cocoapacketanalyzer' do
  version '1.31'
  sha256 'fc3586868fcf90e3ca766c31dbf184de78e5c907210dfdabbd13a831712fc864'

  url "http://tastycocoabytes.com/_downloads/CPA_#{version.gsub('.','')}.dmg"
  appcast 'http://www.tastycocoabytes.com/cpa/updates/appcasting.php',
          :sha256 => 'e5471a829511ba4c4dd1cbf89bc2ea091fe5f27cc5eaae19fecffc94f8384f8a'
  homepage 'http://www.tastycocoabytes.com/cpa/'
  license :unknown    # todo: improve this machine-generated value

  app 'CocoaPacketAnalyzer.app'
end
