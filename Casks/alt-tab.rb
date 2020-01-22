cask 'alt-tab' do
  version '2.3.3'
  sha256 '821feaefda367fc341b8c3684fc6e99f580b646040c395e54859f4f7efd8bb1c'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :sierra'

  app 'AltTab.app'
end
