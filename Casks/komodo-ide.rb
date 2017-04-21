cask 'komodo-ide' do
  version '10.2.1-89853'
  sha256 'd69251338694b43a02cfc3824a2c4bf6ecf8c3a717472bc129d4f53c8bed8e9b'

  # activestate.com/Komodo was verified as official when first introduced to the cask
  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-IDE-#{version}-macosx-x86_64.dmg"
  name 'Komodo IDE'
  homepage 'https://komodoide.com/'

  app "Komodo IDE #{version.major}.app"
end
