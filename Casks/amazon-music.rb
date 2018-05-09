cask 'amazon-music' do
  version '20180426,080839a076'
  sha256 '3f8d652d4915ee9569547956ec2133251f698178fe9cb0b94293bc534fa04bfe'

  # ssl-images-amazon.com/images was verified as official when first introduced to the cask
  url "https://images-na.ssl-images-amazon.com/images/G/01/digital/music/morpho/installers/#{version.before_comma}/#{version.after_comma}/AmazonMusicInstaller.dmg"
  name 'Amazon Music'
  homepage 'https://www.amazon.com/musicapps'

  auto_updates true

  installer script: {
                      executable: 'Amazon Music Installer.app/Contents/MacOS/osx-intel',
                      args:       ['--unattendedmodeui', 'none'],
                    }

  uninstall quit:      [
                         'com.amazon.music',
                         'com.amazon.music-renderer',
                       ],
            delete:    '/Applications/Amazon Music.app',
            launchctl: [
                         'com.amazon.music',
                         'com.amazon.music.startup',
                       ]

  zap trash: [
               '~/Library/Preferences/com.amazon.music.plist',
               '~/Library/Application Support/Amazon Music',
             ]

  caveats <<~EOS
    If the app will not launch after installation, try

      brew cask zap #{token}
      brew cask install #{token}

    then re-launch the app.
  EOS
end
