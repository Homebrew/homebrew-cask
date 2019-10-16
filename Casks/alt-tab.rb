cask 'alt-tab' do
  version '1.0.12'
  sha256 '0785737a0ca5d4e2562754483da11a4ac1220effef38d78617e9aa375da6ffef'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/alt-tab-macos.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :mojave'

  app 'alt-tab-macos.app'
end
