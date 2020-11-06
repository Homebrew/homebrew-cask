cask "hp-prime" do
  version "2020_01_16"
  sha256 "d29067ff767a7ad8b6fc565bed8ccf39edf386be3e7fc0ca5290670cd346911d"

  url "https://ftp.hp.com/pub/calculators/Prime/HP_Prime_Virtual_Calculator_#{version}.dmg"
  name "HP Prime"
  homepage "https://www8.hp.com/us/en/campaigns/prime-graphing-calculator/overview.html"

  app "HP Prime.app"
end
