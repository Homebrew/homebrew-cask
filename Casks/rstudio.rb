cask :v1 => 'rstudio' do
  version '0.99.489'
  sha256 'e211c0645540b8c668824b6fecdfd19820fe937c4db4432abc7aba06e7efd9e6'

  # rstudio.org is the official download host per the vendor homepage
  url "http://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap :delete => '~/.rstudio-desktop'
end
