cask 'fs-uae' do
  version '2.8.3'
  sha256 '3fb52569d2ed483e004b81a55cc2dcdab26d004d01c22709510b488f50918d0e'

  url "https://fs-uae.net/stable/#{version}/fs-uae-suite_#{version}_macos_x86.dmg"
  appcast 'https://fs-uae.net/stable/latest-macosx',
          checkpoint: 'e3fdbc5ab5230a7343de5d2ee3c2df4892f7f30e5fdef2f9654e4a3ac29cd987'
  name 'FS-UAE'
  homepage 'https://fs-uae.net/'

  app 'FS-UAE Arcade.app'
  app 'FS-UAE Launcher.app'
end
