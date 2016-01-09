cask 'bitwig-studio' do
  version '1.3.5'
  sha256 'f15404e9a2a84fbd0165243af49629da1846252ed5915db4853f212a43daecf1'

  url "https://downloads.bitwig.com/stable/#{version}/Bitwig%20Studio%20#{version}.dmg"
  name 'Bitwig Studio'
  homepage 'https://www.bitwig.com'
  license :commercial

  auto_updates true

  app 'Bitwig Studio.app'
end
