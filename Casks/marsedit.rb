cask :v1 => 'marsedit' do
  version '3.7'
  sha256 'cb8010e27ee3d6708b3512884c67ca1422514c20413f06413a88b37189fa5ef0'

  url "http://www.red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'http://www.red-sweater.com/marsedit/appcast3.php',
          :sha256 => '3f45ba546de497b40ef88b7e6bea2b057a3935e71b4768ba626ea282edcef744'
  name 'MarsEdit'
  homepage 'http://www.red-sweater.com/marsedit/'
  license :commercial

  app 'MarsEdit.app'
end
