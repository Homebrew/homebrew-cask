cask 'alt-tab' do
  version '3.2.0'
  sha256 'c849693c531d808b5b9caf60f81fc6492839fee12c44ea974226eb754c7313e3'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :sierra'

  app 'AltTab.app'
end
