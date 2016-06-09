cask 'karabiner' do
  version '10.19.0'
  sha256 '55e8c7a64e83b03f598a71f67a41c76f8bdac5b1b0be1aba46bbbb6e66d698a1'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/appcast.xml',
          checkpoint: '864ef514c3bdd06757610d078a416e3b33801a92b8b88fc9291a8011f1efa8b8'
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
