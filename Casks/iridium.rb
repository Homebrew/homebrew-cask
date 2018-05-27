cask 'iridium' do
  version '2018.04.66.0,2018.4-0'
  sha256 '337b75f59306995d76dc85b155cd693a5411da9e7172b2101d799fa54fff27b7'

  url "https://downloads.iridiumbrowser.de/macos/#{version.after_comma}/iridium_browser_#{version.before_comma}_macos_x64.dmg"
  appcast 'https://downloads.iridiumbrowser.de/macos/',
          checkpoint: '52c03efd7d5917983b6a7b6de52974a757f39f51ee293e4ac605627f9e859ea0'
  name 'Iridium Browser'
  homepage 'https://iridiumbrowser.de/'

  depends_on macos: '>= :mavericks'

  app 'Iridium.app'

  zap trash: [
               '~/Library/Preferences/de.iridiumbrowser.plist',
               '~/Library/Caches/de.iridiumbrowser',
               '~/Library/Application Support/Iridium',
               '~/Library/Saved Application State/de.iridiumbrowser.savedState',
             ]
end
