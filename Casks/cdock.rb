cask :v1 => 'cdock' do
  version '7.3'
  sha256 '88aeadaa446241970bd96685ef9ddb53220b493f321ac0e579d0e7653ef6d984'

  url "http://downloads.sourceforge.net/project/cdock/cDock/cDock_v#{version}.zip"
  name 'cDock'
  homepage 'http://sourceforge.net/projects/cdock/'
  license :oss

  app 'cDock.app'

  depends_on :cask => 'easysimbl'
end
