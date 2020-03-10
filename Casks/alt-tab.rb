cask 'alt-tab' do
  version '3.0.1'
  sha256 'daf094b96bf0f616f9abaf22df67ffbbecd47a12f6a44fcc5e75cf91cb218fc6'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :sierra'

  app 'AltTab.app'
end
