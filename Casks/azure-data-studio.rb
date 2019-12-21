cask 'azure-data-studio' do
  version '1.14.0'
  sha256 '77fbcd62f86c2921ffb22f66820cd961c7e37bd7e52b517dd525f48b0dc4ec16'

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
