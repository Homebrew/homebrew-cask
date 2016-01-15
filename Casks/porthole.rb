cask 'porthole' do
  version :latest
  sha256 :no_check

  url 'http://getporthole.com/downloads/trial'
  appcast 'https://update.getporthole.com/appcast.rss',
          :checkpoint => '1eedb1650d2ddbbac106b5b65a88b1f07ee239264ed8d4f6c303637cc1b65a55'
  name 'Porthole'
  homepage 'http://getporthole.com/'
  license :commercial

  app 'Porthole.app'
end
