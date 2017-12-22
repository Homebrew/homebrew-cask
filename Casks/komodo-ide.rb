cask 'komodo-ide' do
  version '11.0.2-90813'
  sha256 '62f8423ba92f94205aec1a2f34f6330ace7f4156d41f6d046b189c9ebe93a64c'

  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-IDE-#{version}-macosx-x86_64.dmg"
  name 'Komodo IDE'
  homepage 'https://www.activestate.com/komodo-ide/'

  app "Komodo IDE #{version.major}.app"
end
