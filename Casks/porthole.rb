cask 'porthole' do
  version '1.7.7'
  sha256 '3a183805d58a042ddf455780c7ae204f15d7a0158fd9ba24d7e13fa92aa58451'

  url "http://download.getporthole.com/Porthole-v#{version}.zip"
  appcast 'https://update.getporthole.com/appcast.rss',
          checkpoint: '1eedb1650d2ddbbac106b5b65a88b1f07ee239264ed8d4f6c303637cc1b65a55'
  name 'Porthole'
  homepage 'http://getporthole.com/'
  license :commercial

  app 'Porthole.app'
end
