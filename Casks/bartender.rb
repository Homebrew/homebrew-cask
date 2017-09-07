cask 'bartender' do
  version '2.1.6'
  sha256 '013bb1f5dcc29ff1ecbc341da96b6e399dc3c85fc95bd8c7bee153ab0d8756f5'

  url "https://macbartender.com/B2/updates/#{version.dots_to_hyphens}/Bartender%20#{version.major}.zip",
      referer: 'https://www.macbartender.com'
  appcast "https://www.macbartender.com/B#{version.major}/updates/updates.php",
          checkpoint: 'b119cbc503ce671c5aa1a16dc11704b5baed00a6de3d4b344837b854cc47d4c1'
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
