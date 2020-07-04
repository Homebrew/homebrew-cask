cask 'dashlane' do
  version '6.2027.0.36391'
  sha256 'eb453a9c2cd65cadc68837242fc789941bd197947449bbe5184492ce5dd7f08e'

  # d3mfqat9ni8wb5.cloudfront.net/releases/ was verified as official when first introduced to the cask
  url "https://d3mfqat9ni8wb5.cloudfront.net/releases/#{version.major_minor_patch}/#{version}/release/Dashlane.dmg"
  appcast 'https://ws1.dashlane.com/5/binaries/query?format=json&os=OS_X_10_14_5&target=archive&platform=launcher_macosx'
  name 'Dashlane'
  homepage 'https://www.dashlane.com/'

  depends_on macos: '>= :sierra'

  app 'Dashlane.app'

  uninstall launchctl: 'com.dashlane.DashlaneAgent'

  zap trash: [
               '~/Library/Application Scripts/com.dashlane.Dashlane.SafariExtensionDMG',
               '~/Library/Application Support/Dashlane',
               '~/Library/Application Support/com.dashlane.Dashlane',
               '~/Library/Application Support/com.dashlane.DashlaneAgent',
               '~/Library/Caches/com.dashlane.Dashlane',
               '~/Library/Caches/com.dashlane.DashlaneAgent',
               '~/Library/Caches/com.dashlane.DashlanePluginService',
               '~/Library/Containers/com.dashlane.Dashlane.SafariExtensionDMG',
               '~/Library/Preferences/com.dashlane.Dashlane.plist',
               '~/Library/Preferences/com.dashlane.DashlaneAgent.plist',
               '~/Library/Preferences/com.dashlane.DashlanePluginService.plist',
             ]
end
