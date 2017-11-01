cask 'komodo-edit' do
  version '11.0.1-18119'
  sha256 '74be0c20c4fb96bbbf697f6b52b4ea0abbda1d06381906e224ecf8eddd08f7c9'

  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-Edit-#{version}-macosx-x86_64.dmg"
  name 'Komodo Edit'
  homepage 'https://www.activestate.com/komodo-edit/'

  app "Komodo Edit #{version.major}.app"
end
