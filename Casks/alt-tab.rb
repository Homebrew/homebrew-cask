cask 'alt-tab' do
  version '2.2.0'
  sha256 '593d1ebfa50b72c0c39f58355b71ee0e2611de11e0242b55539bc6c143376dfb'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :mojave'

  app 'AltTab.app'
end
