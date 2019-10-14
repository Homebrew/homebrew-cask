cask 'komodo-ide' do
  version '11.1.1-91089'
  sha256 'a522a104da9023311955cfe4ebf3c4e50f7f709e58432a47ea0c4a829d7b2335'

  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-IDE-#{version}-macosx-x86_64.dmg"
  appcast 'https://www.activestate.com/komodo-ide/downloads/ide'
  name 'Komodo IDE'
  homepage 'https://www.activestate.com/komodo-ide/'

  app "Komodo IDE #{version.major}.app"
end
