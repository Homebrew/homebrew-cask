cask :v1 => 'appcleaner' do
  version '2.3'
  sha256 '69da212e2972e23e361c93049e4b4505d7f226aff8652192125f078be7eecf7f'

  url "http://www.freemacsoft.net/downloads/AppCleaner_#{version}.zip"
  name 'AppCleaner'
  appcast 'http://www.freemacsoft.net/appcleaner/Updates.xml',
          :sha256 => '88e632b01611ad88acf07de8e87f4b839c36dae464109981fba170d625d284e3'
  homepage 'http://www.freemacsoft.net/appcleaner/'
  license :gratis

  app 'AppCleaner.app'
end
