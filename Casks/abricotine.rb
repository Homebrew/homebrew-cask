cask 'abricotine' do
  version '0.3.0'
  sha256 '8f2953512f90fda6b79fb54534c4b59bc6a07eac6ce3fdec63a307a2f4945d72'

  # github.com/brrd/Abricotine was verified as official when first introduced to the cask
  url "https://github.com/brrd/Abricotine/releases/download/#{version}/Abricotine-osx-x64.zip"
  appcast 'https://github.com/brrd/Abricotine/releases.atom',
          checkpoint: '682ce18fc15a7cbf68a0a356b5362be45ec3f1e81cabc717e2dfcf782d2c40c5'
  name 'abricotine'
  homepage 'http://abricotine.brrd.fr'
  license :gpl

  app 'Abricotine.app'
end
