cask 'karabiner' do
  version '10.20.0'
  sha256 '5dfbd535a6b7b1fbbecc98b8377af909f8f3a27f9752c1d960a3aa2e5fdd90dd'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/appcast.xml',
          checkpoint: 'fa74e97ee107ab13354b126bc63a6e65c1a72f49c541d2b63d77cee939d0236f'
  name 'Karabiner'
  homepage 'https://pqrs.org/osx/karabiner/'
  license :public_domain

  auto_updates true

  pkg 'Karabiner.sparkle_guided.pkg'
  binary '/Applications/Karabiner.app/Contents/Library/vendor/bin/blueutil'
  binary '/Applications/Karabiner.app/Contents/Library/utilities/bin/warp-mouse-cursor-position'

  uninstall quit:    'org.pqrs.Karabiner',
            pkgutil: 'org.pqrs.driver.Karabiner',
            kext:    'org.pqrs.driver.Karabiner'

  zap       delete: [
                      '~/Library/Application Support/Karabiner',
                      '~/Library/Application Support/KeyRemap4MacBook',
                      '~/Library/Caches/org.pqrs.KeyRemap4MacBook',
                      '~/Library/Preferences/org.pqrs.Karabiner-AXNotifier.plist',
                      '~/Library/Preferences/org.pqrs.Karabiner.multitouchextension.plist',
                      '~/Library/Preferences/org.pqrs.Karabiner.plist',
                      '~/Library/Preferences/org.pqrs.Karabiner.EventViewer.plist',
                      '~/Library/Caches/org.pqrs.Karabiner',
                      '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.pqrs.karabine.sfl',
                      '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.pqrs.karabine.eventviewer.sfl',
                    ]
end
