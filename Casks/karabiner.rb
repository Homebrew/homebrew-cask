cask 'karabiner' do
  version '10.22.0'
  sha256 'b05560f26b16c19eea076f5589b58124dc9346c69be3df25a23c65c77f6d9554'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/appcast.xml',
          checkpoint: '38438b15c3af9c23215ac7d23af13c0b32cbc7b06e96ed02f7b50c29b65924b2'
  name 'Karabiner'
  homepage 'https://pqrs.org/osx/karabiner/'

  auto_updates true

  pkg 'Karabiner.sparkle_guided.pkg'
  binary '/Applications/Karabiner.app/Contents/Library/bin/karabiner'

  uninstall quit:    'org.pqrs.Karabiner',
            pkgutil: 'org.pqrs.Karabiner',
            script:  {
                       executable: '/Library/Application Support/org.pqrs/Karabiner/uninstall.sh',
                       sudo:       true,
                     }

  zap       delete: [
                      '~/Library/Application Support/Karabiner',
                      '~/Library/Application Support/KeyRemap4MacBook',
                      '~/Library/Caches/org.pqrs.KeyRemap4MacBook',
                      '~/Library/Preferences/org.pqrs.Karabiner-AXNotifier.plist',
                      '~/Library/Preferences/org.pqrs.Karabiner.multitouchextension.plist',
                      '~/Library/Preferences/org.pqrs.Karabiner.plist',
                      '~/Library/Preferences/org.pqrs.Karabiner.EventViewer.plist',
                      '~/Library/Caches/org.pqrs.Karabiner',
                      '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.pqrs.karabine.sfl*',
                      '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.pqrs.karabine.eventviewer.sfl*',
                    ]
end
