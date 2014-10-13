class Rstudio < Cask
  version '0.98.1073'
  sha256 '115d0e7670d4da08fa98446a1c12d4d25bb5748b42f483677e8be6c477a79af1'

  url "http://download1.rstudio.org/RStudio-#{version}.dmg"
  homepage 'http://www.rstudio.com/'
  license :unknown

  app 'RStudio.app'

  zap :delete => '~/.rstudio-desktop'
end
