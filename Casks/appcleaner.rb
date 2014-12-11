cask :v1 => 'appcleaner' do
  version '2.2.3'
  sha256 '90b3d8e3c32388035e5154594222d66d48d5cad263a5387f77f9ea77315af84d'

  url "http://www.freemacsoft.net/downloads/AppCleaner_#{version}.zip"
  appcast 'http://www.freemacsoft.net/appcleaner/Updates.xml',
          :sha256 => '88e632b01611ad88acf07de8e87f4b839c36dae464109981fba170d625d284e3'
  homepage 'http://www.freemacsoft.net/appcleaner/'
  license :unknown    # todo: improve this machine-generated value

  app 'AppCleaner.app'
end
