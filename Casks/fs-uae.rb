cask 'fs-uae' do
  version '3.0.1'
  sha256 '3128732e18f479b800f11aa092c7bf0f139a88c06d14a885b15512446a72b3ae'

  url "https://fs-uae.net/stable/#{version}/FS-UAE-Suite_#{version}_macOS_x86-64.dmg"
  appcast 'https://fs-uae.net/stable/latest-macosx'
  name 'FS-UAE'
  homepage 'https://fs-uae.net/'

  app 'FS-UAE Arcade.app'
  app 'FS-UAE Launcher.app'
end
