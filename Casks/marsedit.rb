cask :v1 => 'marsedit' do
  version '3.6.7'
  sha256 '5620407616b21bc2099be344402b93adc0832f90f4b8773d724b8e48a990da9b'

  url "http://www.red-sweater.com/marsedit/MarsEdit#{version}.zip"
  appcast 'http://www.red-sweater.com/marsedit/appcast3.php',
          :sha256 => '3f45ba546de497b40ef88b7e6bea2b057a3935e71b4768ba626ea282edcef744'
  homepage 'http://www.red-sweater.com/marsedit/'
  license :unknown    # todo: improve this machine-generated value

  app 'MarsEdit.app'
end
