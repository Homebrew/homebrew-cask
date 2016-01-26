cask 'rss' do
  version :latest
  sha256 :no_check

  url 'http://www.rssapplication.com/RSS.zip'
  name 'RSS'
  homepage 'http://www.rssapplication.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'RSS.app'
end
