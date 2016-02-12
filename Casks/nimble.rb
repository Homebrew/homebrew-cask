cask 'nimble' do
  version '1.0.3'
  sha256 'f0abf20dd008256109774ecceda2becfb03df1c5bb32b9c03a6f58e431ebb630'

  # github.com/madebybright/Nimble was verified as official when first introduced to the cask
  url "https://github.com/madebybright/Nimble/releases/download/#{version}/Nimble-v#{version}.dmg"
  appcast 'https://github.com/madebybright/Nimble/releases.atom',
          checkpoint: '0f3abb9a6d4980bc3da4d333a4e5c1046b4103f662e40b01e726faca6b798b9a'
  name 'Nimble'
  homepage 'http://madebybright.com'
  license :mit

  app 'Nimble.app'
end
