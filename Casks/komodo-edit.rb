cask 'komodo-edit' do
  version '12.0.0,18431'
  sha256 '0c92a66d92da265aa2890cbd6a1add11203b431b7a5b346700cf4cf1242f782a'

  url "https://downloads.activestate.com/Komodo/releases/#{version.before_comma}/Komodo-Edit-#{version.before_comma}-#{version.after_comma}-macosx-x86_64.dmg"
  appcast 'https://www.activestate.com/komodo-ide/downloads/edit'
  name 'Komodo Edit'
  homepage 'https://www.activestate.com/komodo-edit/'

  app "Komodo Edit #{version.major}.app"
end
