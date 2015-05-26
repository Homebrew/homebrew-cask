cask :v1 => 'openra' do
  version '20150424'
  sha256 'e90b6cbb7faf941e5b794a322c345132db15e7a31e12ec0a22a9518643baf356'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/OpenRA/OpenRA/releases/download/release-#{version}/OpenRA-release-#{version}.zip"
  appcast 'https://github.com/OpenRA/OpenRA/releases.atom'
  name 'OpenRA'
  homepage 'http://www.openra.net/'
  license :gpl

  app 'OpenRA.app'
end
