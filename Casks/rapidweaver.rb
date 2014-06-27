class Rapidweaver < Cask
  version 'latest'
  sha256 :no_check
  
  url 'https://realmacsoftware.com/redirects/rapidweaver/direct'
  appcast 'http://www.realmacsoftware.com/stats/rapidweaver5.php'
  homepage 'http://realmacsoftware.com/rapidweaver'

  link 'RapidWeaver.app'
end
