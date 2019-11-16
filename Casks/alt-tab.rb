cask 'alt-tab' do
  version '1.12.2'
  sha256 '6e5a22ca0131f7a10c60b518045029bf92392f371168ae64bbb8ae393eacb6bd'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :mojave'

  app 'AltTab.app'
end
