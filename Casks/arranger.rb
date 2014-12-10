cask :v1 => 'arranger' do
  version '1.5'
  sha256 'dff93bacfa3f0a00ecde23c55abd7124efe7bcf7f5980bb347f87b9c9f6b62b6'

  url 'http://bucketomac.de/wp-content/plugins/download-monitor/download.php?id=5'
  appcast 'http://bucketomac.de/appcast/arrangercast.xml',
          :sha256 => '07eedcf0ac71ee0102ff9061dce7146552c6667f7e6770bdaf0c2f502fe49319'
  homepage 'http://bucketomac.de/arranger/arranger/'
  license :unknown    # todo: improve this machine-generated value

  app 'Arranger.app'

  # todo: replace with new assistive_devices stanza
  caveats do
    <<-EOS.undent
      To use #{@cask}, you may need to give it access to assistive
      devices (Accessibility).  For OS X Mavericks and Above:

        System Preferences / Security & Privacy / Privacy / Accessibility
    EOS
  end
end
