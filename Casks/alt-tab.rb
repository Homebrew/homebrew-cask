cask 'alt-tab' do
  version '1.14.2'
  sha256 '609085cd86c2383862a2a77bfb83fea6db3cb31d9b0246420463f0ba56c9e31d'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :mojave'

  app 'AltTab.app'
end
