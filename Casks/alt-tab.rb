cask 'alt-tab' do
  version '3.1.1'
  sha256 'dcaf6048a9eaa12dd5c3bb6c61f7cde891c2aa553b5fd05d94c1e0a216f2b267'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :sierra'

  app 'AltTab.app'
end
