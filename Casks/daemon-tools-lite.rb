cask 'daemon-tools-lite' do
  version '4.1.227'
  sha256 'ab382437d94b38ff8b20ebfb3c5557f939792bc67d0b5518836e06cfd2ab29b0'

  # disk-tools.com was verified as official when first introduced to the cask
  url "http://eu-uk7.disk-tools.com/56ce8f647dedb536a1b5106ff40d88ba/DAEMONTools-#{version.dots_to_hyphens}.dmg"
  appcast 'http://resources.web-search-home.com/xml/DAEMONToolsLite-appcast.xml',
          checkpoint: '48410ce70ce912cd51c297e22da0ebdb2cf4b97c6f330b61a9fe91d389ed2e9b'
  name 'DAEMON Tools Lite'
  homepage 'https://www.daemon-tools.cc/products/dtMacLite'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'DAEMON Tools Lite.app'
end
