cask 'openra' do
  version '20160508'
  sha256 '2992357757c8882ebda97ae5239a4e8e435e06c58575f4230de45647414c6bd1'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/OpenRA/OpenRA/releases/download/release-#{version}/OpenRA-release-#{version}.zip"
  appcast 'https://github.com/OpenRA/OpenRA/releases.atom',
          checkpoint: 'e6787d8d0cafc3da4c192de3f532e331173134ac2cb043ba67be65e09cb66462'
  name 'OpenRA'
  homepage 'http://www.openra.net'
  license :gpl

  depends_on cask: 'mono-mdk'

  app 'OpenRA.app'
end
