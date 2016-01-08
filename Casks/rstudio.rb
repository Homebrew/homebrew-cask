cask 'rstudio' do
  version '0.99.491'
  sha256 '6aef41467ba25889d49a23ebe274123b15bc5949b60db69540fc4276486eaea5'

  # rstudio.org is the official download host per the vendor homepage
  url "https://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap :delete => '~/.rstudio-desktop'
end
