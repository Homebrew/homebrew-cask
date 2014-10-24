class Autodmg < Cask
  version '1.5'
  sha256 '3a033cf88ac8ee4ea0ce2629a6a7ae8d63d2abe268fe9bd8afb9863910247474'

  url "https://github.com/MagerValp/AutoDMG/releases/download/v#{version}/AutoDMG-#{version}.dmg"
  homepage 'https://github.com/MagerValp/AutoDMG'
  license :apache

  app 'AutoDMG.app'
end
