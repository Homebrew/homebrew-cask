cask 'rstudio' do
  version '0.99.893'
  sha256 '4a54c3113b26e6ab218af3690eba695d5d53fb434aefee33f1ff6cc5fbadc82e'

  # rstudio.org was verified as official when first introduced to the cask
  url "https://download1.rstudio.org/RStudio-#{version}.dmg"
  name 'RStudio'
  homepage 'https://www.rstudio.com/'
  license :affero

  app 'RStudio.app'

  zap delete: '~/.rstudio-desktop'
end
