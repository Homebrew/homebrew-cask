cask :v1 => 'komodo-edit' do
  version '8.5.4'
  sha256 '424558813e2926386e9d1de2bf93eb772a9b61b2f90688efc13e073d0d1b452e'

  url "http://downloads.activestate.com/Komodo/releases/#{version}/Komodo-Edit-#{version}-14424-macosx-x86_64.dmg"
  homepage 'http://komodoide.com/komodo-edit'
  license :unknown

  app 'Komodo Edit 8.app'
end
