cask :v1 => 'rss' do
  version :latest
  sha256 :no_check

  url 'http://www.rssapplication.com/RSS.zip'
  homepage 'http://www.rssapplication.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'RSS.app'
end
