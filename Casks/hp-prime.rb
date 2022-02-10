cask "hp-prime" do
  version "2020-01-16"
  sha256 "d29067ff767a7ad8b6fc565bed8ccf39edf386be3e7fc0ca5290670cd346911d"

  url "https://ftp.hp.com/pub/calculators/Prime/HP_Prime_Virtual_Calculator_#{version.hyphens_to_underscores}.dmg"
  name "HP Prime"
  desc "Graphing calculator emulator"
  homepage "https://www.hp.com/us-en/campaigns/prime-graphing-calculator/overview.html"

  livecheck do
    url "https://www.hpcalc.org/details/7799"
    regex(/<title>.*?\((\d+(?:-\d+)+)\)/i)
  end

  app "HP Prime.app"
end
