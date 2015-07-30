cask :v1 => 'rstudio' do
  version '0.99.467'
  sha256 '3a9c88da0eb523556627282869919e590723777cb763515be8ea442cce71a333'

  # rstudio.org is the official download host per the vendor homepage
  url "http://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap :delete => '~/.rstudio-desktop'
end
