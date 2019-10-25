cask 'alt-tab' do
  version '1.5.1'
  sha256 '80d37bf3f6d0384b34376aa87bd20377c087fc56388b83c9fe9d4964b16ede70'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :mojave'

  app 'AltTab.app'
end
