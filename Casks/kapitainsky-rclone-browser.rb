cask 'kapitainsky-rclone-browser' do
  version '1.7.0,f0dc81f'
  sha256 'e2b94030f05b30f1075b884375c40df45afafb4bb2941367db2ed245fb88065b'

  url "https://github.com/kapitainsky/RcloneBrowser/releases/download/#{version.before_comma}/rclone-browser-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://github.com/kapitainsky/RcloneBrowser/releases.atom'
  name 'Rclone Browser'
  homepage 'https://github.com/kapitainsky/RcloneBrowser'

  depends_on formula: 'rclone'

  app 'Rclone Browser.app'
end
