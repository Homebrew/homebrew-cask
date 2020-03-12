cask 'alt-tab' do
  version '3.1.2'
  sha256 '32c4db52cbab7eb896573fd6bef0ba7f18248e7de2982b803beb6e52f7787ecd'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :sierra'

  app 'AltTab.app'
end
