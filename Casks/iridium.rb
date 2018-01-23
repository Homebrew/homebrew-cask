cask 'iridium' do
  version '2017.11-1'
  sha256 'c60de6ccd8de35b3cf2f75b0f00274c50ced0eeb2a5eb0525b1905fb1039b61c'

  url "https://downloads.iridiumbrowser.de/macos/#{version}/iridium_browser_#{version}_macos_x64.dmg"
  appcast 'https://downloads.iridiumbrowser.de/macos/',
          checkpoint: '8030b33d6c451429d6098e802548c1f47dc8fbe12851ba1b55cb54502b434cbf'
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
