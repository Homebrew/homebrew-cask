cask 'alt-tab' do
  version '2.3.4'
  sha256 'ad0dc9dfdb9cc6d719249575382455e4873e95aa5e08aae20bc0ae1eb36aee2b'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :sierra'

  app 'AltTab.app'
end
