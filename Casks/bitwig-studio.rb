cask 'bitwig-studio' do
  version '1.3.11'
  sha256 'f9133d4704f377a78eeec5cb8537751976454f439123b7a5684434d29b3a9077'

  url "https://downloads.bitwig.com/stable/#{version}/Bitwig%20Studio%20#{version}.dmg"
  name 'Bitwig Studio'
  homepage 'https://www.bitwig.com'
  license :commercial

  app 'Bitwig Studio.app'
end
