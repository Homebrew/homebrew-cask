cask 'komodo-ide' do
  version '11.1.0-91033'
  sha256 'b46304e7849a9c507d3e7602dd264be9961100aaf8ff3a6e7689cdeddeea1f49'

  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-IDE-#{version}-macosx-x86_64.dmg"
  appcast 'https://www.activestate.com/komodo-ide/downloads/ide'
  name 'Komodo IDE'
  homepage 'https://www.activestate.com/komodo-ide/'

  app "Komodo IDE #{version.major}.app"
end
