class Appcleaner < Cask
  version '2.2.3'
  sha256 '90b3d8e3c32388035e5154594222d66d48d5cad263a5387f77f9ea77315af84d'

  url 'http://www.freemacsoft.net/downloads/AppCleaner_2.2.3.zip'
  appcast 'http://www.freemacsoft.net/appcleaner/Updates.xml'
  homepage 'http://www.freemacsoft.net/appcleaner/'

  app 'AppCleaner.app'
end
