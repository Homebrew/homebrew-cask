cask :v1 => 'porthole' do
  version :latest
  sha256 :no_check

  url 'http://getporthole.com/downloads/trial'
  appcast 'http://update.getporthole.com/appcast.rss'
  name 'Porthole'
  homepage 'http://getporthole.com/'
  license :commercial

  app 'Porthole.app'
end
