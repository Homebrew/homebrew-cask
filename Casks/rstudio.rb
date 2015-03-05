cask :v1 => 'rstudio' do
  version '0.98.1102'
  sha256 '1fc867cff35a79f71d104b6fc0a164bed6124dcaf2d1229fd77f93d6b2faf303'

  # rstudio.org is the official download host per the vendor homepage
  url "http://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap :delete => '~/.rstudio-desktop'
end
