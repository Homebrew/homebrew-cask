cask 'amazon-music' do
  version '7.12.0.2203,2005262203_1ee547b2e9653d9520168396897e3c22'
  sha256 '7d31d7e568e5e2acd497fd2cb56c41fa68d89d7af804aaba5b95b6fb8cb6fa57'

  # morpho-releases.s3-us-west-2.amazonaws.com/mac/ was verified as official when first introduced to the cask
  url "https://morpho-releases.s3-us-west-2.amazonaws.com/mac/#{version.after_comma}/AmazonMusicInstaller.dmg"
  appcast 'https://www.amazon.com/gp/dmusic/desktop/downloadPlayer',
          must_contain: version.after_comma
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
