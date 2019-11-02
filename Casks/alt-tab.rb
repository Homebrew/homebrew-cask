cask 'alt-tab' do
  version '1.12.0'
  sha256 '3ad2682c312916040dfddfddfeac058e2b8bd2f4410ee0a4fbc52302290cbfc9'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :mojave'

  app 'AltTab.app'
end
