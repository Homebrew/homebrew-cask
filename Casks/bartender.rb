cask 'bartender' do
  if MacOS.version <= :el_capitan
    version '2.1.6'
    sha256 '013bb1f5dcc29ff1ecbc341da96b6e399dc3c85fc95bd8c7bee153ab0d8756f5'
  else
    version '3.1.07'
    sha256 '3eb3629cf4eee818d8395429e5b0fe612268fb6fc7e8a2e9405037989962d45f'
  end

  url "https://macbartender.com/B2/updates/#{version.dots_to_hyphens}/Bartender%20#{version.major}.zip",
      referer: 'https://www.macbartender.com'
  appcast 'https://www.macbartender.com/B2/updates/Appcast.xml',
          configuration: version.dots_to_hyphens
  name 'Bartender'
  homepage 'https://www.macbartender.com/'

  auto_updates true

  app "Bartender #{version.major}.app"

  uninstall delete:    [
                         '/Library/Audio/Plug-Ins/HAL/BartenderAudioPlugIn.plugin',
                         '/Library/PrivilegedHelperTools/com.surteesstudios.Bartender.BartenderInstallHelper',
                         '/Library/ScriptingAdditions/BartenderHelper.osax',
                         '/System/Library/ScriptingAdditions/BartenderSystemHelper.osax',
                       ],
            launchctl: 'com.surteesstudios.Bartender.BartenderInstallHelper',
            quit:      'com.surteesstudios.Bartender'

  zap trash: [
               '~/Library/Caches/com.surteesstudios.Bartender',
               '~/Library/Cookies/com.surteesstudios.Bartender.binarycookies',
               '~/Library/Preferences/com.surteesstudios.Bartender.plist',
             ]
end
