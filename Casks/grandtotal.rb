class Grandtotal < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://www.mediaatelier.com/GrandTotal3/download.php'
  appcast 'http://mediaatelier.com/GrandTotal3/feed.php'
  homepage 'http://www.mediaatelier.com/GrandTotal3/'

  link 'GrandTotal.app'
end
