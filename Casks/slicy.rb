class Slicy < Cask
  version 'latest'
  sha256 :no_check
  
  url 'https://macrabbit.com/slicy/get/'
  appcast 'http://update.macrabbit.com/slicy/1.1.3.xml'
  homepage 'http://macrabbit.com/slicy/'

  link 'Slicy.app'
end
