cask 'komodo-edit' do
  version '11.0.0-18063'
  sha256 'b5dbc8a031679e29143136113082af98dcbcc1c4410ed0d4a457fc242d728cfc'

  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-Edit-#{version}-macosx-x86_64.dmg"
  name 'Komodo Edit'
  homepage 'https://www.activestate.com/komodo-edit/'

  app "Komodo Edit #{version.major}.app"
end
