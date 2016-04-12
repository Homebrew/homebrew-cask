cask 'abricotine' do
  version '0.3.0'
  sha256 '8f2953512f90fda6b79fb54534c4b59bc6a07eac6ce3fdec63a307a2f4945d72'

  # github.com/brrd/Abricotine was verified as official when first introduced to the cask
  url "https://github.com/brrd/Abricotine/releases/download/#{version}/Abricotine-osx-x64.zip"
  appcast 'https://github.com/brrd/Abricotine/releases.atom',
          checkpoint: 'fbe11502681133ccbcfa8d9c0ffd43061e96106ad6c87ea89034c990350c2291'
  name 'abricotine'
  homepage 'http://abricotine.brrd.fr'
  license :gpl

  app 'Abricotine.app'
end
