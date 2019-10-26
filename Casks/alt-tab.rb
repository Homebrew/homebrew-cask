cask 'alt-tab' do
  version '1.9.5'
  sha256 '9d519024c1d960480f428feaaa311ec925a9ff63de0963755c4ff5bbc3e71834'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  depends_on macos: '>= :mojave'

  app 'AltTab.app'
end
