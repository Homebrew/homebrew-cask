cask 'azure-data-studio' do
  version '1.17.1'
  sha256 '47d59aab2baa2ec5b7ac5012cc84b2723603cb6c31f4dcf07a94ca6566b72cdc'

  # azuredatastudiobuilds.blob.core.windows.net was verified as official when first introduced to the cask
  url "https://azuredatastudiobuilds.blob.core.windows.net/releases/#{version}/azuredatastudio-macos-#{version}.zip"
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
