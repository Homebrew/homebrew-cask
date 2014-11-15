cask :v1 => 'porthole' do
  version :latest
  sha256 :no_check

  url 'http://getporthole.com/downloads/trial'
  appcast 'http://update.getporthole.com/appcast.rss'
  homepage 'http://getporthole.com/'
  license :unknown

  app 'Porthole.app'
end
