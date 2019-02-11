cask 'gtkwave' do
  version '3.3.99'
  sha256 '3b12891e8fa014b8efc6d5c5251187b22a4b3c6170f54e6eb647524fadf0d884'

  # downloads.sourceforge.net/gtkwave was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gtkwave/gtkwave-#{version}-osx-app/gtkwave.zip"
  appcast 'https://sourceforge.net/projects/gtkwave/rss'
  name 'GTKWave'
  homepage 'https://gtkwave.sourceforge.io/'

  depends_on x11: true

  app 'gtkwave.app'
  binary "#{appdir}/gtkwave.app/Contents/Resources/bin/gtkwave_bin_launcher.sh", target: 'gtkwave'

  zap trash: [
               '~/Library/Application Support/CrashReporter/gtkwave-bin_*.plist',
               '~/Library/Preferences/com.geda.gtkwave.plist',
               '~/Library/Saved Application State/com.geda.gtkwave.savedState',
             ]
end
