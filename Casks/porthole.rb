cask 'porthole' do
  version :latest
  sha256 :no_check

  url 'http://getporthole.com/downloads/trial'
  appcast 'https://update.getporthole.com/appcast.rss',
          :sha256 => '1a3928ca8e3e2efb40757c3e2348397ca5dcec24e9a3d0172cbbb8c263324440'
  name 'Porthole'
  homepage 'http://getporthole.com/'
  license :commercial

  app 'Porthole.app'
end
