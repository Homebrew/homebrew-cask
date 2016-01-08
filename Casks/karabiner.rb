cask 'karabiner' do
  version '10.15.0'
  sha256 '91f3f8709103213fbcaedc352feb135fa0a5c55cda9643135b532bc453acf89e'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/appcast.xml',
          :sha256 => '80507c8ee91466c273fccee7a815a9e773cb14e778b807c95f67719c97d57c23'
  name 'Karabiner'
  name 'KeyRemap4MacBook'
  homepage 'https://pqrs.org/osx/karabiner/'
  license :public_domain

  pkg 'Karabiner.sparkle_guided.pkg'
  binary '/Applications/Karabiner.app/Contents/Library/vendor/bin/blueutil'
  binary '/Applications/Karabiner.app/Contents/Library/utilities/bin/warp-mouse-cursor-position'

  uninstall :quit    => 'org.pqrs.Karabiner',
            :pkgutil => 'org.pqrs.driver.Karabiner',
            :kext    => 'org.pqrs.driver.Karabiner'

  zap       :delete => [
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
