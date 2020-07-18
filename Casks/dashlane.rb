cask 'dashlane' do
  version '6.2028.0.36961'
  sha256 '6a68f58a2a240a4bfd5b30d557c69ff06a3812881aad26b43fddbfcf4b130055'

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
