cask :v1 => 'rstudio' do
  version '0.99.441'
  sha256 'c7095ec8ea0de052a1a9f07292244a74f398e20e4d06be9742c5be9506bbeadd'

  # rstudio.org is the official download host per the vendor homepage
  url "http://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap :delete => '~/.rstudio-desktop'
end
