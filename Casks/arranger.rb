class Arranger < Cask
  version '1.5'
  sha256 'dff93bacfa3f0a00ecde23c55abd7124efe7bcf7f5980bb347f87b9c9f6b62b6'
  
  url 'http://bucketomac.de/wp-content/plugins/download-monitor/download.php?id=5'
  appcast 'http://bucketomac.de/appcast/arrangercast.xml'
  homepage 'http://bucketomac.de/arranger/arranger/'

  link 'Arranger.app'
  caveats 'Note that Arranger also needs access for assistive devices (Accessibility)'
end
