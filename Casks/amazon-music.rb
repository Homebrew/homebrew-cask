cask 'amazon-music' do
  version '7.10.0.2177,2002102177'
  sha256 'ff8bb6f8175a0443d9640ed2608180271316df05369a32bb7d26ddbb78f796fd'

  # morpho-releases.s3-us-west-2.amazonaws.com/mac was verified as official when first introduced to the cask
  url "https://morpho-releases.s3-us-west-2.amazonaws.com/mac/#{version.after_comma}/AmazonMusicInstaller.dmg"
  appcast 'https://www.amazon.com/gp/dmusic/desktop/downloadPlayer',
          configuration: version.after_comma
  name 'Amazon Music'
  homepage 'https://www.amazon.com/musicapps'

  auto_updates true

  installer script: {
                      executable: 'Amazon Music Installer.app/Contents/MacOS/installbuilder.sh',
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
