cask 'amazon-music' do
  version '7.11.3.2198,20200415'
  sha256 'dfc5cfb4ed0e1fc6bbb974fdbea2a4ff5079dc6096a7b7edd3d7e967d5556a35'

  # morpho-releases.s3-us-west-2.amazonaws.com/mac/ was verified as official when first introduced to the cask
  url "https://morpho-releases.s3-us-west-2.amazonaws.com/mac/#{version.before_comma}_#{version.after_comma}/AmazonMusicInstaller.dmg"
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
