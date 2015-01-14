cask :v1 => 'rss' do
  version :latest
  sha256 :no_check

  url 'http://www.rssapplication.com/RSS.zip'
  homepage 'http://www.rssapplication.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'RSS.app'
end
