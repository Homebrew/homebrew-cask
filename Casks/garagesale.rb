cask :v1 => 'garagesale' do
  version '6.6.6'
  sha256 '2a740647b5eafc543bc3b2ba604ece8921fb59ee3b096edb4d13193642bc4897'

  url "http://www.iwascoding.de/downloads/GarageSale_#{version}.dmg"
  appcast 'http://www.iwascoding.com/GarageSale/AppCast.php',
          :sha256 => '3bc0ac9ead57616b1261263671045ca70cedc5061047da72e536c266cc6a2f4d'
  homepage 'http://www.iwascoding.com/GarageSale/index.html'
  license :unknown

  app 'GarageSale.app'
end
