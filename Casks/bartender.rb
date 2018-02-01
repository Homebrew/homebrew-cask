cask 'bartender' do
  if MacOS.version <= :el_capitan
    version '2.1.6'
    sha256 '013bb1f5dcc29ff1ecbc341da96b6e399dc3c85fc95bd8c7bee153ab0d8756f5'
  else
    version '3.0.39'
    sha256 'e03dcf5329d15f687b8dcf68164060cdfc57758b74dbf727e2d808a39b7b6dfb'
  end

  url "https://macbartender.com/B2/updates/#{version.dots_to_hyphens}/Bartender%20#{version.major}.zip",
      referer: 'https://www.macbartender.com'
  appcast 'https://www.macbartender.com/B2/updates/Appcast.xml',
          checkpoint: '6161112c873aa58934018d4fb98782c440953d7335034a7d91f01faf16017fdd'
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

  zap trash: [
               '~/Library/Caches/com.surteesstudios.Bartender',
               '~/Library/Cookies/com.surteesstudios.Bartender.binarycookies',
               '~/Library/Preferences/com.surteesstudios.Bartender.plist',
             ]
end
