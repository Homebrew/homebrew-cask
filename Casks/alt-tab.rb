cask 'alt-tab' do
  version '3.0.4'
  sha256 '659aef96d83f5820c253b170e4dc5e16c7145b5641ddc1cb19ca5d95ccbbbc61'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :sierra'

  app 'AltTab.app'
end
