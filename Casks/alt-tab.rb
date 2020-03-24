cask 'alt-tab' do
  version '3.1.3'
  sha256 'a950aa39afaf6250a2b850e305bc31ebb69493a7c7c50382b88794c12f4bb14d'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :sierra'

  app 'AltTab.app'
end
