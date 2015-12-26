cask 'porthole' do
  version :latest
  sha256 :no_check

  url 'http://getporthole.com/downloads/trial'
  appcast 'https://update.getporthole.com/appcast.rss',
          :sha256 => '3ef0f2a1f0df7613bdeab8603c49420bd3f15a81b83804cb01352ee3ce9cf806'
  name 'Porthole'
  homepage 'http://getporthole.com/'
  license :commercial

  app 'Porthole.app'
end
