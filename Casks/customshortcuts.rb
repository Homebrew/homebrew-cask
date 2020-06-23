cask 'customshortcuts' do
  version '1.0.1'
  sha256 'fb32fe34cd6fd60665555cdc36bd5624723da00a35efb913d18eb7d151ab46a4'

  url "https://www.houdah.com/customShortcuts/download_assets/CustomShortcuts#{version}.zip"
  appcast 'https://www.houdah.com/customShortcuts/release.html'
  name 'CustomShortcuts'
  homepage 'https://www.houdah.com/customShortcuts/'

  app 'CustomShortcuts.app'

  zap trash: [
               '~Library/Application Support/com.houdah.CustomShortcuts',
               '~/Library/Caches/com.houdah.CustomShortcuts',
               '~/Library/Preferences/com.houdah.CustomShortcuts.plist',
             ]
end
