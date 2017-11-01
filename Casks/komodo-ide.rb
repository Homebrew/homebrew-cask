cask 'komodo-ide' do
  version '11.0.1-90797'
  sha256 '0d342dae4824c52498d4cfecd22588e0de06e3cdee7d980e1c8aa0bc37001484'

  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-IDE-#{version}-macosx-x86_64.dmg"
  name 'Komodo IDE'
  homepage 'https://www.activestate.com/komodo-ide/'

  app "Komodo IDE #{version.major}.app"
end
