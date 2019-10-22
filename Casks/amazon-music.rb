cask 'amazon-music' do
  version '7.8.4,20191014:194547a7a5'
  sha256 '2907563115b2d367f77cac66f40abd12f830734001eaee688a34cb371a9c2089'

  # ssl-images-amazon.com/images was verified as official when first introduced to the cask
  url "https://images-na.ssl-images-amazon.com/images/G/01/digital/music/morpho/installers/#{version.after_comma.before_colon}/#{version.after_colon}/AmazonMusicInstaller.dmg"
  appcast 'https://www.amazon.com/gp/dmusic/desktop/downloadPlayer',
          configuration: "#{version.after_comma.before_colon}/#{version.after_colon}"
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
