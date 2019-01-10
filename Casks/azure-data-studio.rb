cask 'azure-data-studio' do
  version '1.3.8'
  sha256 '7363ae4a774d31c569e28587184a4cfad50ce30eefbe76f0e31e23cf8787c9d6'

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
