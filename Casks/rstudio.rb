cask :v1 => 'rstudio' do
  version '0.99.485'
  sha256 '2125e01171b814f709c9c06d5baea4e7e895e7ae926657cdcc618de869e98413'

  # rstudio.org is the official download host per the vendor homepage
  url "http://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap :delete => '~/.rstudio-desktop'
end
