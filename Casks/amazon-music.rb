cask 'amazon-music' do
  version '20170609,030623c6bb'
  sha256 '285439b394833ff8c4fa36b9296951f91ecb97a83a33b79b2da3da2b25c87964'

  # ssl-images-amazon.com was verified as official when first introduced to the cask
  url "https://images-na.ssl-images-amazon.com/images/G/01/digital/music/morpho/installers/#{version.before_comma}/#{version.after_comma}/AmazonMusicInstaller.dmg"
  name 'Amazon Music'
  homepage 'https://www.amazon.com/b/ref=topnav_storetab_dmusic?node=14981443011'

  installer script: {
                      executable: 'Amazon Music Installer.app/Contents/MacOS/osx-intel',
                      args:       ['--unattendedmodeui', 'none'],
                    }

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
    If the app will not launch after installation, try

      brew cask zap #{token}
      brew cask install #{token}

    then re-launch the app. You can read more about the issue on Amazon's customer forums
    http://www.amazon.com/App-wont-open-OS-Yosemite/forum/FxZLHSK3AW6KZU/Tx1EJYW65OQ5TZS
  EOS
end
