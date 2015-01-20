cask :v1 => 'komodo-edit' do
  version '8.5.4-14424'
  sha256 '424558813e2926386e9d1de2bf93eb772a9b61b2f90688efc13e073d0d1b452e'

  # activestate.com is the official download host per the vendor homepage
  url "http://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*},'')}/Komodo-Edit-#{version}-macosx-x86_64.dmg"
  homepage 'http://komodoide.com/komodo-edit'
  license :mpl

  app 'Komodo Edit 8.app'
end
