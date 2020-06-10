cask 'kiwix' do
  version '2.1'
  sha256 '61056a5f48dce8ec63f1082e0b41c4fcbd0e8cf3f36dc06a1f6a3ef29c215669'

  url "https://download.kiwix.org/release/kiwix-desktop-macos/kiwix-desktop-macos_#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.kiwix.org/release/kiwix-desktop-macos/kiwix-desktop-macos.dmg'
  name 'Kiwix'
  homepage 'https://www.kiwix.org/'

  app 'Kiwix.app'
end
