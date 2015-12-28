cask 'neofinder' do
  version :latest
  sha256 :no_check

  url 'http://www.cdfinder.de/neofinder.zip'
  appcast 'http://www.wfs-apps.de/updates/neofinder-appcast-64.xml',
          :sha256 => '3434aae6fbc46a5d36590690c03a938e4cdda3af262bab47f4cfb3e60db42832'
  name 'NeoFinder'
  homepage 'http://www.cdfinder.de'
  license :commercial

  app 'NeoFinder.app'
end
