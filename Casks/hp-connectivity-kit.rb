cask 'hp-connectivity-kit' do
  version '20181016'
  sha256 '0ab7e168e9b3106f04f93f67b6e02e4844743e765b7c26ec1e471e96dae48566'

  url "ftp://ftp.hp.com/pub/calculators/Prime/HP_Prime_Connectivity_Kit_#{version}.dmg"
  name 'HP Connectivity Kit'
  homepage 'ihttps://www8.hp.com/us/en/campaigns/prime-graphing-calculator/overview.html'

  app 'HP Connectivity Kit.app'
end
