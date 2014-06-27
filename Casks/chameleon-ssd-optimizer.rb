class ChameleonSsdOptimizer < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://chameleon.alessandroboschini.it/download.php'
  appcast 'http://chameleon.alessandroboschini.it/sparkle/profileInfo.php'
  homepage 'http://chameleon.alessandroboschini.it/'

  link 'Chameleon SSD Optimizer.app'
end
