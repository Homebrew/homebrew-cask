class Papers < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://papersapp.com/papers/download'
  appcast 'http://www.papersapp.com/papers/appcast_v3.xml'
  homepage 'http://www.papersapp.com/papers/'

  link 'Papers.app'
end
