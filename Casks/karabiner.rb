cask 'karabiner' do
  version '10.21.0'
  sha256 '4b4815e139ef2579144b66f33f20a6ab57c6bf76b06f217cd23b5d2482261636'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/appcast.xml',
          checkpoint: '291a5570aeda093e72ab0948ae70790a964887fcf03b156402ff0daf3768f58f'
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
