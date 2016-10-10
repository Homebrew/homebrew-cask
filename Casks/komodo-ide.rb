cask 'komodo-ide' do
  version '10.0.1-89237'
  sha256 'f08c9e995a8ef62805dc482c3ee654e48f96bf51352ecbe23f2cae755deb8a43'

  # activestate.com/Komodo was verified as official when first introduced to the cask
  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-IDE-#{version}-macosx-x86_64.dmg"
  name 'Komodo IDE'
  homepage 'https://komodoide.com/'

  app "Komodo IDE #{version.major}.app"
end
