class Smaller < Cask
  version 'latest'
  sha256 :no_check

  url 'http://smallerapp.com/download/Smaller.zip'
  appcast 'http://smallerapp.com/up/updates.xml'
  homepage 'http://smallerapp.com/'

  link 'Smaller.app'
end
