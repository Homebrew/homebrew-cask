cask 'fs-uae' do
  version '3.0.2'
  sha256 '2879d9bafe2698749877fff4ef1f44de143ee59464df25b2ac63d33d2a300af6'

  url "https://fs-uae.net/stable/#{version}/FS-UAE-Suite_#{version}_macOS_x86-64.dmg"
  appcast 'https://fs-uae.net/stable/latest-macosx'
  name 'FS-UAE'
  homepage 'https://fs-uae.net/'

  app 'FS-UAE Arcade.app'
  app 'FS-UAE Launcher.app'
end
