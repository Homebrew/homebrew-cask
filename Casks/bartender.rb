cask 'bartender' do
  if MacOS.version <= :el_capitan
    version '2.1.6'
    sha256 '013bb1f5dcc29ff1ecbc341da96b6e399dc3c85fc95bd8c7bee153ab0d8756f5'
  else
    version '3.0.64'
    sha256 '40a65c09f41ff56cd95b247c94ebdeda78748253b86204d0e4617b3f3fd4e261'
  end

  url "https://macbartender.com/B2/updates/#{version.dots_to_hyphens}/Bartender%20#{version.major}.zip",
      referer: 'https://www.macbartender.com'
  appcast 'https://www.macbartender.com/B2/updates/Appcast.xml'
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
