cask :v1 => 'dockmod3' do
  version '3.01'
  sha256 '1d7582c5ec59dd4dc15a07db10042b8654ff0047091bb401e98a4bd6810699bb'

  url "http://spyresoft.com/dockmod/download.php?version=#{version}"
  appcast 'http://spyresoft.com/dockmod/updates3.xml',
          sha256 => :no_check
  name 'DockMod 3' # only for OS X 10.10 Yosemite, use dockmod for previous versions
  homepage 'http://spyresoft.com/dockmod/'
  license :freemium

  app 'DockMod.app'
end
