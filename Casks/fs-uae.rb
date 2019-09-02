cask 'fs-uae' do
  version '3.0.0'
  sha256 '606ff910ffc6b50a4675ab4cace5a8a152aed1fd334c98bbac3a725bbace9f52'

  url "https://fs-uae.net/stable/#{version}/FS-UAE-Suite_#{version}_macOS_x86-64.dmg"
  appcast 'https://fs-uae.net/stable/latest-macosx'
  name 'FS-UAE'
  homepage 'https://fs-uae.net/'

  app 'FS-UAE Arcade.app'
  app 'FS-UAE Launcher.app'
end
