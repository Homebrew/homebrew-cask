cask :v1 => 'komodo-edit' do
  version '9.0.0-15707'
  sha256 '1937614d15bfe81e1488e9e67a26fb12e86870c1edafc77d1cb72df151febf85'

  # activestate.com is the official download host per the vendor homepage
  url "http://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*},'')}/Komodo-Edit-#{version}-macosx-x86_64.dmg"
  name 'Komodo Edit'
  homepage 'http://komodoide.com/komodo-edit'
  license :mpl

  app 'Komodo Edit 9.app'
end
