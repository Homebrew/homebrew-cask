cask 'fs-uae' do
  version '2.6.2'
  sha256 '1c4e285ac82828d004c900e05b29dc6363eeb5f705524bfaa2bd4e6f57101ace'

  url "http://fs-uae.net/stable/#{version}/fs-uae-suite_#{version}_macosx.tar.gz"
  name 'FS-UAE'
  homepage 'http://fs-uae.net/'
  license :oss

  app 'FS-UAE Arcade.app'
  app 'FS-UAE Launcher.app'
end
