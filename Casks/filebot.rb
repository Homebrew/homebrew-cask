cask 'filebot' do
  version '4.7.2'
  sha256 '888d98c63bc8f3a008cdb360f132822878c06dfa3f8fdec9fdacf2ba9855ba26'

  # sourceforge.net/filebot was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/filebot/filebot/FileBot_#{version}/FileBot_#{version}-brew.tar.bz2"
  appcast 'https://sourceforge.net/projects/filebot/rss?path=/filebot',
          checkpoint: 'db948fcf10ec2bf554c46e33caaf26a190f642493d7790f7bb282beb6ec34b56'
  name 'FileBot'
  homepage 'https://www.filebot.net/'

  app "FileBot_#{version}-brew.app"
  binary "#{appdir}/FileBot_#{version}-brew.app/Contents/MacOS/filebot.sh", target: 'filebot'

  zap delete: [
                '~/Library/Preferences/net.filebot.ui.plist',
              ]

  caveats do
    depends_on_java('8')
  end
end
