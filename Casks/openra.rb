cask 'openra' do
  version '20151224'
  sha256 '2c3f43839b6626e5c739d28c332e9f3b03c0ef4b0fd0c76980f3c55044c90dbb'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/OpenRA/OpenRA/releases/download/release-#{version}/OpenRA-release-#{version}.zip"
  appcast 'https://github.com/OpenRA/OpenRA/releases.atom'
  name 'OpenRA'
  homepage 'http://www.openra.net/'
  license :gpl

  depends_on :cask => 'mono-mdk'

  app 'OpenRA.app'
end
