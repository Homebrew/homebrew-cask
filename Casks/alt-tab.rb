cask 'alt-tab' do
  version '1.14.4'
  sha256 '17be1d2b692f1d4f871ba1ed9e519fb0401bb6a845f96bbdb8ace3cba2ed5ba8'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :mojave'

  app 'AltTab.app'
end
