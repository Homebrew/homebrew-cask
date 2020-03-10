cask 'alt-tab' do
  version '3.0.0'
  sha256 'e1741ad75124f44d3deaebcdabcce0c967d0afd307e68cd53c40a21292a57512'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :sierra'

  app 'AltTab.app'
end
