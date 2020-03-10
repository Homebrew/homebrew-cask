cask 'alt-tab' do
  version '3.0.5'
  sha256 '2a1bb453d9dcd5d51bec1f15b0890bad2c051393e719fbb7004b9d0b7ffeec79'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :sierra'

  app 'AltTab.app'
end
