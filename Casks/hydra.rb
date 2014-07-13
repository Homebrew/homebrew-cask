class Hydra < Cask
  version '0.13'
  sha256 '837bc4050a765b53685ca30d6ceaae240c3070fbf4f9194634b01ee90d45e294'

  url "https://github.com/sdegutis/hydra/releases/download/#{version}/Hydra-#{version}.zip"
  homepage 'https://github.com/sdegutis/hydra'

  link 'Hydra.app'
end
