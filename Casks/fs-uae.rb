cask 'fs-uae' do
  version '2.8.0'
  sha256 '4988967ea61701dc0c2025a1d3765254142cecdd35ea84cc8a8a59d9198e99b0'

  url "https://fs-uae.net/stable/#{version}/fs-uae-suite_#{version}_macosx_x86-64.tar.gz"
  name 'FS-UAE'
  homepage 'https://fs-uae.net/'

  app 'FS-UAE Arcade.app'
  app 'FS-UAE Launcher.app'
end
