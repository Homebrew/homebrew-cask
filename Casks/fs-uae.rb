cask 'fs-uae' do
  version '2.8.1u3'
  sha256 '353ac692c21d3b13dd4c37d8d66baf76b4865f893eee4f7a7871a8c1af6a69dd'

  url "https://fs-uae.net/stable/#{version}/fs-uae-suite_#{version}_macosx_x86.tar.gz"
  name 'FS-UAE'
  homepage 'https://fs-uae.net/'

  app 'FS-UAE Arcade.app'
  app 'FS-UAE Launcher.app'
end
