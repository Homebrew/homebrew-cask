cask 'airparrot' do
  version '2.8.1'
  sha256 'e4507e8b12377ef5669a37cc10130a9b69f6decca34fa9c6ac98a83d35fb2523'

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
