cask 'lepton' do
  version '1.2.1'
  sha256 '8b8487425b8a2e4649e860fa223500c7ea7894ae7f2774680eef99cc74c8899f'

  # github.com/hackjutsu/Lepton was verified as official when first introduced to the cask
  url "https://github.com/hackjutsu/Lepton/releases/download/v#{version}/Lepton-#{version}-mac.zip"
  appcast 'https://github.com/hackjutsu/Lepton/releases.atom',
          checkpoint: '10612fabc575066085e1da2609be43562e70b1e18db8c1842bc6e80ac18fc817'
  name 'Lepton'
  homepage 'http://hackjutsu.com/Lepton/'

  app 'Lepton.app'
end
