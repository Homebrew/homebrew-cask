cask 'alt-tab' do
  version '1.4.5'
  sha256 'a10be9f85ed2450b4e38c5f1e8773270f8c523e7fe12b153e81abfa2f431f1ba'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :mojave'

  app 'AltTab.app'
end
