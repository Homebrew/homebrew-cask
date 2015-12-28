cask 'airmedia' do
  version '1.0.4.5'
  sha256 '28023efa567969d87e5cc701fc8a80341d12d9f0a7e77dc1d946e343ab2bdf09'

  url "https://www.crestron.com/downloads/software/airmedia_guest_os_x_#{version}.dmg"
  name 'Crestron AirMedia'
  homepage 'http://www.crestron.com/airmedia'
  license :gratis

  app 'AirMedia.app'
end
