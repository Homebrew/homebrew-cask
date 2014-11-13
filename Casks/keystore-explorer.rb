cask :v1 => 'keystore-explorer' do
  version '5.0.1'
  sha256 '64932fc5a26bd4de32d952b73431307c9a7c3100c1b11e76ab9f55e2a2cf7d49'

  url "https://downloads.sourceforge.net/project/keystore-explorer/KSE%20#{version}/kse-501.dmg?r=&ts=1393234297&use_mirror=heanet"
  homepage 'http://keystore-explorer.sourceforge.net/index.php'
  license :oss

  app "KeyStore Explorer #{version}.app"
end
