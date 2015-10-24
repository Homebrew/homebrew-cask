cask :v1 => 'rstudio' do
  version '0.99.486'
  sha256 '36bf213eb595568fe12090629d8082d7ce5f1e4073bba80a92e11c2e1809bcc3'

  # rstudio.org is the official download host per the vendor homepage
  url "http://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap :delete => '~/.rstudio-desktop'
end
