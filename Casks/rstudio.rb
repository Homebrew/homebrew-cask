cask :v1 => 'rstudio' do
  version '0.99.447'
  sha256 'dee0acdd0407f22ed8158bc2ed2a69640999444f5eb2dfbb591900d2a09eabc2'

  # rstudio.org is the official download host per the vendor homepage
  url "http://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap :delete => '~/.rstudio-desktop'
end
