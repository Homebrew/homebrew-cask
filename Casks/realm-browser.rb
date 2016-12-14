cask 'realm-browser' do
  version '2.1.2'
  sha256 'fc9356c241687096b18c397585acff1d81a9e06c3aae43cdb56d2174966f6ea0'

  url "https://github.com/realm/realm-browser-osx/releases/download/v#{version}/Realm.Browser-#{version}.zip"
  appcast 'https://github.com/realm/realm-browser-osx/releases.atom',
          checkpoint: 'b2d6a1a85a6bbcf784aa2bbaee9836717ee8479cfe396565a6964c1896706ae4'
  name 'Realm Browser'
  homepage 'https://github.com/realm/realm-browser-osx/'

  app 'Realm Browser.app'
end
