cask 'bartender' do
  version '3.0.8'
  sha256 '4aace5381d4d96794ff2ebe155c1f7b55d6fa0aa805ba77cbe6ac6431c8d7ef3'

  url "https://macbartender.com/B2/updates/#{version.dots_to_hyphens}/Bartender%20#{version.major}.zip",
      referer: 'https://www.macbartender.com'
  appcast 'https://www.macbartender.com/B2/updates/Appcast.xml',
          checkpoint: '5de6b86db8c35136b502e4351ce3348da40e5667a1c45a4396043af09aace284'
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
