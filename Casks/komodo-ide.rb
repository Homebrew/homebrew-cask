cask 'komodo-ide' do
  version '11.0.0-90668'
  sha256 '442c7f79ed67d76bba57898ab50e8a1ecd01f557d6fe687342c5697d833341ce'

  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-IDE-#{version}-macosx-x86_64.dmg"
  name 'Komodo IDE'
  homepage 'https://www.activestate.com/komodo-ide/'

  app "Komodo IDE #{version.major}.app"
end
