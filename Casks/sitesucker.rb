cask :v1 => 'sitesucker' do
  version :latest
  sha256 :no_check

  url 'http://www.sitesucker.us/archive/latest/SiteSucker.zip'
  name 'SiteSucker'
  homepage 'http://www.sitesucker.us/mac/mac.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SiteSucker/SiteSucker.app'
end
