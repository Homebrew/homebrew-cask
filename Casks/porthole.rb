cask 'porthole' do
  version '1.7.8'
  sha256 'f59b618fcbd8135fdbbe58da6c87e9bc457d7e7a8f9aee11f460c5a86b49e09d'

  url "http://download.getporthole.com/Porthole-v#{version}.zip"
  appcast 'https://update.getporthole.com/appcast.rss',
          checkpoint: '832694ca1715fbd74cac68b0c543084fdf67e7c1ebffc7e38be8f0f4d4f285cd'
  name 'Porthole'
  homepage 'http://getporthole.com/'
  license :commercial

  app 'Porthole.app'
end
