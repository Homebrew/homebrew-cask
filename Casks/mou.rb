class Mou < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://mouapp.com/download/Mou.zip'
  appcast 'http://mouapp.com/up/updates.xml'
  homepage 'http://mouapp.com/'

  link 'Mou.app'
end
