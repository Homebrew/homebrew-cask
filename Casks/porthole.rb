cask 'porthole' do
  version '1.7.9'
  sha256 '805847cfec098073feabccd7f65f448c27c3db14574ac4a94b823458e525ebe3'

  url "https://download.getporthole.com/Porthole-v#{version}.zip"
  appcast 'https://update.getporthole.com/appcast.rss',
          checkpoint: 'a3602cb1b9271bafaa09b607760da032f2bedaa6315238a339ae22c607510197'
  name 'Porthole'
  homepage 'http://getporthole.com/'

  app 'Porthole.app'
end
