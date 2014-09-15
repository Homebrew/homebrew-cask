class AirmailAmt < Cask
  version 'latest'
  sha256 :no_check

  url 'https://rink.hockeyapp.net/api/2/apps/af58f04487c30ac4c1e8706aa9e41c5b?format=zip'
  homepage 'http://airmailapp.com/amt/'

  app 'Airmail AMT.app'
end
