cask 'airparrot' do
  version '2.8.0'
  sha256 '3ec8e83c5a029d926cdfb16c4015c72996911826ca39ca4a39eed41c2e7aeb1e'

  url "https://download.airsquirrels.com/AirParrot#{version.major}/Mac/AirParrot-#{version}.dmg"
  appcast "https://updates.airsquirrels.com/AirParrot#{version.major}/Mac/AirParrot#{version.major}.xml"
  name 'AirParrot'
  homepage 'https://www.airsquirrels.com/airparrot/'

  app "AirParrot #{version.major}.app"

  uninstall kext: [
                    'com.squirrels.driver.AirParrotSpeakers',
                    '/Library/Extensions/AirParrotDriver.kext',
                    '/Library/Extensions/APExtFramebuffer.kext',
                    '/System/Library/Extensions/AirParrotDriver.kext',
                    '/System/Library/Extensions/APExtFramebuffer.kext',
                  ],
            quit: "com.squirrels.AirParrot-#{version.major}"

  zap trash: '~/Library/Preferences/com.squirrels.AirParrot-*.plist'
end
