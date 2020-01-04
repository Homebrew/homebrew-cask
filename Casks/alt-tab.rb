cask 'alt-tab' do
  version '2.3.1'
  sha256 '354972cbd39953b55d5d8755601a7447fc2f8767c95fc622fdf3fd8295186875'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :mojave'

  app 'AltTab.app'
end
