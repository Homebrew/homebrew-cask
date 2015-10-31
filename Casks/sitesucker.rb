cask :v1 => 'sitesucker' do
  version :latest
  sha256 :no_check

  url 'http://www.sitesucker.us/archive/latest/SiteSucker.zip'
  name 'SiteSucker'
  homepage 'http://www.sitesucker.us/mac/mac.html'
  license :commercial

  app 'SiteSucker/SiteSucker.app'
end
