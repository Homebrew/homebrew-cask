cask :v1 => 'rstudio' do
  version '0.98.1087'
  sha256 'c7832ad0c1ec0fc4ed7e0617cca8a840a413c0e5eccc50734b27cb4f76ae8a4d'

  url "http://download1.rstudio.org/RStudio-#{version}.dmg"
  homepage 'http://www.rstudio.com/'
  license :unknown

  app 'RStudio.app'

  zap :delete => '~/.rstudio-desktop'
end
