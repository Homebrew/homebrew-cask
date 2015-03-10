cask :v1 => 'rstudio' do
  version '0.98.1103'
  sha256 '43328b9044e48e66a23f29bd6e5d2c5b95ea2e434224e051b04a2fdf20acb48e'

  # rstudio.org is the official download host per the vendor homepage
  url "http://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap :delete => '~/.rstudio-desktop'
end
