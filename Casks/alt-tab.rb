cask 'alt-tab' do
  version '1.11.3'
  sha256 'f9968b4b0ba63879b8135d5c23d1a509ffe6edf2ffdc7da1a9724d1a8702dd5f'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :mojave'

  app 'AltTab.app'
end
