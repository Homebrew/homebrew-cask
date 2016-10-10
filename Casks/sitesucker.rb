cask 'sitesucker' do
  version :latest
  sha256 :no_check

  url 'http://www.sitesucker.us/archive/latest/SiteSucker.zip'
  name 'SiteSucker'
  homepage 'http://www.sitesucker.us/mac/mac.html'

  app 'SiteSucker/SiteSucker.app'
end
