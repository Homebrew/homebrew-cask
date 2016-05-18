cask 'amazon-music' do
  version '20160415,00313300da'
  sha256 '35970b4dfb2e6b4b2391b7d48bfe4483bf33e4632f2b265cf4d9e8806747ed6d'

  url "https://images-na.ssl-images-amazon.com/images/G/01/digital/music/morpho/installers/#{version.before_comma}/#{version.after_comma}/AmazonMusicInstaller.dmg"
  name 'Amazon Music'
  homepage 'https://www.amazon.com/gp/feature.html/?ie=UTF8&docId=1001067901'
  license :gratis

  installer script: 'Amazon Music Installer.app/Contents/MacOS/osx-intel',
            args:   ['--unattendedmodeui', 'none'],
            sudo:   true

  uninstall quit:      [
                         'com.amazon.music',
                         'com.amazon.music-renderer',
                       ],
            delete:    [
                         '/Applications/Amazon Music.app',
                       ],
            launchctl: 'com.amazon.music'

  zap delete: [
                '~/Library/Preferences/com.amazon.music.plist',
                '~/Library/Application Support/Amazon Music/',
              ]

  caveats <<-EOS.undent
    If the app won't launch after installation, try

      brew cask zap #{token}
      brew cask install #{token}

    then re-launch the app. You can read more about the issue on Amazon's customer forums
    http://www.amazon.com/App-wont-open-OS-Yosemite/forum/FxZLHSK3AW6KZU/Tx1EJYW65OQ5TZS
  EOS
end
