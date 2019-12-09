cask 'komodo-edit' do
  version '11.1.1,18206'
  sha256 '3ee0bfe5494b4eb785cbeb7efff68a39db7cd6e57a43b975a614ed36fd17277a'

  url "https://downloads.activestate.com/Komodo/releases/#{version.before_comma}/Komodo-Edit-#{version.before_comma}-#{version.after_comma}-macosx-x86_64.dmg"
  appcast 'https://www.activestate.com/komodo-ide/downloads/edit'
  name 'Komodo Edit'
  homepage 'https://www.activestate.com/komodo-edit/'

  app "Komodo Edit #{version.major}.app"
end
