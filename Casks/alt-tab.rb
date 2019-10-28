cask 'alt-tab' do
  version '1.11.0'
  sha256 '8bc397a461193d0006077c58ee5b4b7b0fbd434a1f660e429c7a0daed16f7a2f'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :mojave'

  app 'AltTab.app'
end
