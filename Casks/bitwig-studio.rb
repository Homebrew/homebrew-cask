cask 'bitwig-studio' do
  version '1.3.10'
  sha256 '1c0e0d9d3eaa5c85de906435086091029a41d6ed948afddd628b741510fb2867'

  url "https://downloads.bitwig.com/stable/#{version}/Bitwig%20Studio%20#{version}.dmg"
  name 'Bitwig Studio'
  homepage 'https://www.bitwig.com'
  license :commercial

  app 'Bitwig Studio.app'
end
