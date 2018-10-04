cask 'azure-data-studio' do
  version '1.0.0'
  sha256 '06673e796702917b3cd4479101a6c3e5cd3cb412dd8d323f9027bd6a79249532'

  # github.com/Microsoft/azuredatastudio was verified as official when first introduced to the cask
  url "https://github.com/Microsoft/azuredatastudio/releases/download/#{version}/azuredatastudio-macos-#{version}.zip"
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
