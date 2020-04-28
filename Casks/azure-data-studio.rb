cask 'azure-data-studio' do
  version '1.17.0'
  sha256 '6fbb3478ed809d65ae121cdbd866f72b79a7dcabe72a4c3645cf25e23ad1340b'

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
