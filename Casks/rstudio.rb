cask :v1 => 'rstudio' do
  version '0.99.482'
  sha256 '1d8ebc577c55bd3ad1472786cd8b86520f8e852113a6e816cefecaa8c93c475e'

  # rstudio.org is the official download host per the vendor homepage
  url "http://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap :delete => '~/.rstudio-desktop'
end
