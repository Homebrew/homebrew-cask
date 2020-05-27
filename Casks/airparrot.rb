cask 'airparrot' do
  version '3.0.0'
  sha256 '79e985c3cd6bbfe0a3d87424d658d1193a884b98bf27c44dda76270156c2ee87'

  url "https://download.airsquirrels.com/AirParrot#{version.major}/Mac/AirParrot-#{version}.dmg"
  appcast 'https://www.airsquirrels.com/airparrot/release-notes/mac'
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
