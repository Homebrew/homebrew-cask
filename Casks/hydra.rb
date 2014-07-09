class Hydra < Cask
  version '1.0.b10'
  sha256 'f6d2045d1ae14ef6d4d0d38e8a9044f810e99f65f2cc2b89efe5903db6b6aa66'

  url "https://github.com/sdegutis/hydra/releases/download/v#{version}/Hydra-v#{version}.app.zip"
  homepage 'https://github.com/sdegutis/hydra'

  link 'Hydra.app'
end
