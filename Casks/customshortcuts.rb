cask 'customshortcuts' do
  version '1.0.2'
  sha256 'cb9011104f384200f062bba948399d28b668412c03532bfa695d734b9a25270e'

  url "https://www.houdah.com/customShortcuts/download_assets/CustomShortcuts#{version}.zip"
  appcast 'https://www.houdah.com/customShortcuts/updates/cast.xml'
  name 'CustomShortcuts'
  homepage 'https://www.houdah.com/customShortcuts/'

  app 'CustomShortcuts.app'

  zap trash: [
               '~/Library/Application Support/com.houdah.CustomShortcuts',
               '~/Library/Caches/com.houdah.CustomShortcuts',
               '~/Library/Preferences/com.houdah.CustomShortcuts.plist',
             ]
end
