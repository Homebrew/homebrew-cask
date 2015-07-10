cask :v1 => 'rstudio' do
  version '0.99.465'
  sha256 'fc1774294a6e38de7f94c2e9bd5f63583334e6a9a3bfbdafc32043efa6499b34'

  # rstudio.org is the official download host per the vendor homepage
  url "http://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'http://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap :delete => '~/.rstudio-desktop'
end
