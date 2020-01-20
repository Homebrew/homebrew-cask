cask 'alt-tab' do
  version '2.3.2'
  sha256 'ee09ad4d77cfa9dc3d8b795f3674d9e2d3227807610f6ea654199eb37191fc1c'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :sierra'

  app 'AltTab.app'
end
