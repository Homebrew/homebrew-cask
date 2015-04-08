cask :v1 => 'marsedit' do
  version '3.6.8'
  sha256 'c3c2e98558dcba466497b5318fd73f4f9c5ba53db336958321e799d72a90d7b8'

  url "http://www.red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'http://www.red-sweater.com/marsedit/appcast3.php',
          :sha256 => '3f45ba546de497b40ef88b7e6bea2b057a3935e71b4768ba626ea282edcef744'
  name 'MarsEdit'
  homepage 'http://www.red-sweater.com/marsedit/'
  license :commercial

  app 'MarsEdit.app'
end
