cask 'nimble' do
  version '1.0.3'
  sha256 'f0abf20dd008256109774ecceda2becfb03df1c5bb32b9c03a6f58e431ebb630'

  url "https://github.com/madebybright/Nimble/releases/download/#{version}/Nimble-v#{version}.dmg"
  name 'Nimble'
  homepage 'http://madebybright.com'
  license :mit

  app 'Nimble.app'
end
