cask 'bartender' do
  if MacOS.version <= :el_capitan
    version '2.1.6'
    sha256 '013bb1f5dcc29ff1ecbc341da96b6e399dc3c85fc95bd8c7bee153ab0d8756f5'
  else
    version '3.0.25'
    sha256 '7011df179316135454896d37c7b1916e15bfb6cc834311b023c1e6d3c444f63c'
  end

  url "https://macbartender.com/B2/updates/#{version.dots_to_hyphens}/Bartender%20#{version.major}.zip",
      referer: 'https://www.macbartender.com'
  appcast 'https://www.macbartender.com/B2/updates/Appcast.xml',
          checkpoint: '164ad62f5e279c24043f4f9a87f40fefeb058a57030789cfcbd536c0fe32e7b9'
  name 'Bartender'
  homepage 'https://www.macbartender.com/'

  auto_updates true

  app "Bartender #{version.major}.app"

  uninstall delete:     [
                          '/Library/Audio/Plug-Ins/HAL/BartenderAudioPlugIn.plugin',
                          '/Library/PrivilegedHelperTools/com.surteesstudios.Bartender.BartenderInstallHelper',
                          '/Library/ScriptingAdditions/BartenderHelper.osax',
                          '/System/Library/ScriptingAdditions/BartenderSystemHelper.osax',
                        ],
            launchctl:  'com.surteesstudios.Bartender.BartenderInstallHelper',
            login_item: "Bartender #{version.major}",
            quit:       'com.surteesstudios.Bartender'

  zap delete: [
                '~/Library/Caches/com.surteesstudios.Bartender',
                '~/Library/Cookies/com.surteesstudios.Bartender.binarycookies',
              ],
      trash:  '~/Library/Preferences/com.surteesstudios.Bartender.plist'
end
