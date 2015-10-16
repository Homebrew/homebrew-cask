cask :v1 => 'openra' do
  version '20150919'
  sha256 '395ab15e92cec263ca6fda3f97b3593fd7e42ab9e7b3ca23f302bc4809605761'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/OpenRA/OpenRA/releases/download/release-#{version}/OpenRA-release-#{version}.zip"
  appcast 'https://github.com/OpenRA/OpenRA/releases.atom'
  name 'OpenRA'
  homepage 'http://www.openra.net/'
  license :gpl

  depends_on :cask => 'mono-mdk'

  app 'OpenRA.app'
end
