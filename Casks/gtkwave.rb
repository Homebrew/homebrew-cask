cask 'gtkwave' do
  version '3.3.103'
  sha256 '53156f87b6cb644b9b658c1c8b50a92ec88c27dee0c21a4d427f619bdbe1b835'

  # downloads.sourceforge.net/gtkwave/ was verified as official when first introduced to the cask
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

  caveats <<~EOS
    You may need to install Perl’s Switch module to run #{token}’s command line tool.

      https://ughe.github.io/2018/11/06/gtkwave-osx
  EOS
end
