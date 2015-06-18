cask :v1 => 'fs-uae' do
  version '2.4.1'
  sha256 '7fa26b9840cc677642956020e2fa5dfae4f5848554d06df2e39e98816ab6d736'

  url "http://fs-uae.net/stable/#{version}/fs-uae-suite_#{version}_macosx.tar.gz"
  name 'FS-UAE'
  homepage 'http://fs-uae.net/'
  license :oss

  app 'FS-UAE Arcade.app'
  app 'FS-UAE Launcher.app'
end
