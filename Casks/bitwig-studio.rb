cask 'bitwig-studio' do
  version '1.3.8'
  sha256 '46ae6298ee3fe9f87028b7ffce62e677a168cff7a0e9a4ca9c8b51996144a1b0'

  url "https://downloads.bitwig.com/stable/#{version}/Bitwig%20Studio%20#{version}.dmg"
  name 'Bitwig Studio'
  homepage 'https://www.bitwig.com'
  license :commercial

  auto_updates true

  app 'Bitwig Studio.app'
end
