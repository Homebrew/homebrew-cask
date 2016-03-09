cask 'recent-menu' do
  version :latest
  sha256 :no_check

  url 'http://www.timschroeder.net/recentmenu/RecentMenu.zip'
  name 'Recent Menu'
  homepage 'http://www.timschroeder.net/recentmenu/'
  license :oss

  app 'Recent Menu.app'
end
