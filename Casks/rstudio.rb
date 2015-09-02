cask :v1 => 'rstudio' do
  version '0.99.473'
  sha256 'e35fb1a76f3eeb17cdb586e146da0a3ac7b9485a27d20ad4e3f700344422036b'

  # rstudio.org is the official download host per the vendor homepage
  url "http://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap :delete => '~/.rstudio-desktop'
end
