cask :v1 => 'openra' do
  version '20141029'
  sha256 '421f341d324e2e360cf17facc1379b19036f7459516b84685037a041d5020e64'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/OpenRA/OpenRA/releases/download/release-#{version}/OpenRA-release-#{version}.zip"
  homepage 'http://www.openra.net/'
  license :gpl

  app 'OpenRA.app'
end
