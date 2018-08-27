cask 'recent-menu' do
  version :latest
  sha256 :no_check

  url 'https://www.timschroeder.net/files/RecentMenu.zip'
  name 'Recent Menu'
  homepage 'https://www.timschroeder.net/recentmenu/'

  app 'Recent Menu.app'

  zap trash: [
               '~/Library/Application Scripts/com.timschroeder.recentmenu',
               '~/Library/Containers/com.timschroeder.recentmenu',
               '~/Library/Preferences/com.timschroeder.recentmenu.plist',
             ]
end
