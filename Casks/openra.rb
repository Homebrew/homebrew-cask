cask :v1 => 'openra' do
  version '20150614'
  sha256 '30afbc56e8f8964b158fd0cc811bb9d8bdc2f22a76e1b77458f1293658ff2fc8'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/OpenRA/OpenRA/releases/download/release-#{version}/OpenRA-release-#{version}.zip"
  appcast 'https://github.com/OpenRA/OpenRA/releases.atom'
  name 'OpenRA'
  homepage 'http://www.openra.net/'
  license :gpl

  depends_on :cask => 'mono-mdk'

  app 'OpenRA.app'
end
