cask 'alt-tab' do
  version '2.0.0'
  sha256 '83cb1b3cd83a6a00698309563c786ce754ea1b0de456edeeb773a5775a7400b6'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :mojave'

  app 'AltTab.app'
end
