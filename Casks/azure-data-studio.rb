cask 'azure-data-studio' do
  version '1.20.0,cfbadd1eaef2dfa1fd643009c572137c704f1009'
  sha256 'c975fb43772050a04cf1a6f14b89dd60424bb54e9e0ac040c9594416d2ab4244'

  # sqlopsbuilds.azureedge.net/stable was verified as official when first introduced to the cask
  url "https://sqlopsbuilds.azureedge.net/stable/#{version.after_comma}/azuredatastudio-macos-#{version.before_comma}.zip"
  appcast 'https://github.com/Microsoft/azuredatastudio/releases.atom'
  name 'Azure Data Studio'
  homepage 'https://docs.microsoft.com/en-us/sql/azure-data-studio/'

  auto_updates true

  app 'Azure Data Studio.app'
  binary "#{appdir}/Azure Data Studio.app/Contents/Resources/app/bin/code", target: 'azuredatastudio'

  zap trash: [
               '~/Library/Application Support/azuredatastudio',
               '~/Library/Preferences/com.azuredatastudio.oss.helper.plist',
               '~/Library/Preferences/com.azuredatastudio.oss.plist',
               '~/Library/Saved Application State/com.azuredatastudio.oss.savedState',
             ]
end
