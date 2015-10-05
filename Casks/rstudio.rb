cask :v1 => 'rstudio' do
  version '0.99.484'
  sha256 '5a7a9fc8559a653d38402aadbd7c1a8c726dfdf193ed5394c29fbfa9a4608b2b'

  # rstudio.org is the official download host per the vendor homepage
  url "http://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap :delete => '~/.rstudio-desktop'
end
