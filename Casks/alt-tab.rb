cask 'alt-tab' do
  version '1.4.4'
  sha256 'c6b5a1fc790f5c6368588297392f7947ecfa4426453e7de6242b6116448f283b'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  app 'AltTab.app'
end
