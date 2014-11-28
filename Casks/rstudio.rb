cask :v1 => 'rstudio' do
  version '0.98.1091'
  sha256 'ea8baebe66903312bb84816669711b11f0dcd377a6f8c1c4c9f4c669ebd3dc18'

  url "http://download1.rstudio.org/RStudio-#{version}.dmg"
  homepage 'http://www.rstudio.com/'
  license :unknown

  app 'RStudio.app'

  zap :delete => '~/.rstudio-desktop'
end
