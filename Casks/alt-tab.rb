cask 'alt-tab' do
  version '1.0.11'
  sha256 'ea686d83929bb043b0de9d776d93b07f21a2218f2b9b822342e47954b23b3580'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/alt-tab-macos.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  auto_updates false

  app 'alt-tab-macos.app'
end
