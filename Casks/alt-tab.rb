cask 'alt-tab' do
  version '4.1.6'
  sha256 '966105e6cb9f45e4e9cede2df35943f1003314bb92d0313b668c80abe43774d6'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'AltTab.app'

  uninstall quit: 'com.lwouis.alt-tab-macos'

  zap trash: [
               '~/Library/Caches/com.lwouis.alt-tab-macos',
               '~/Library/Cookies/com.lwouis.alt-tab-macos.binarycookies',
               '~/Library/Preferences/com.lwouis.alt-tab-macos.plist',
             ]
end
