class Hydra < Cask
  version '1.0.b11'
  sha256 '719add886941a4fa346cb630daa67e6d3096b7a98725c32e3cce5bf051b07e48'

  url "https://github.com/sdegutis/hydra/releases/download/v#{version}/Hydra-v#{version}.app.zip"
  homepage 'https://github.com/sdegutis/hydra'

  link 'Hydra.app'
end
