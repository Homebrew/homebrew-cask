class Marsedit < Cask
  version '3.6.5'
  sha256 'c9c64486aef9e903acb8cfbc4e018e32707d9e4d04dc489537be07f61c5b90dc'

  url "http://www.red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'http://www.red-sweater.com/marsedit/appcast3.php',
          :sha256 => '3f45ba546de497b40ef88b7e6bea2b057a3935e71b4768ba626ea282edcef744'
  homepage 'http://www.red-sweater.com/marsedit/'
  license :unknown

  app 'MarsEdit.app'
end
