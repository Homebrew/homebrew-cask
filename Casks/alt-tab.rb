cask 'alt-tab' do
  version '1.9.6'
  sha256 '6418e03c5d0d4418318c0861f33b909887015eace54ec6f68174dd020691cc93'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :mojave'

  app 'AltTab.app'
end
