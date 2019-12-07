cask 'hp-prime' do
  version '2018_10_16'
  sha256 '5bbb8f101d57f48a9c1323c890a17caec7d145656ebbe7b4978da92edf62f34a'

  url "https://ftp.hp.com/pub/calculators/Prime/HP_Prime_Virtual_Calculator_#{version}.dmg"
  name 'HP Prime'
  homepage 'https://www8.hp.com/us/en/campaigns/prime-graphing-calculator/overview.html'

  app 'HP Prime.app'
end
