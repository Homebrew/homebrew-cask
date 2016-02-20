cask 'abricotine' do
  version '0.2.2'
  sha256 '2a540ff77f1076660805ca3fde507f0095ae6a1ce83aade3e9f07613259a21f7'

  # github.com/brrd/Abricotine was verified as official when first introduced to the cask
  url "https://github.com/brrd/Abricotine/releases/download/#{version}/Abricotine-osx-x64.zip"
  appcast 'https://github.com/brrd/Abricotine/releases.atom',
          checkpoint: 'eaea002610ceedecd5920957c123575cc168e8292bd34caadb9f44c2ec4e8fa8'
  name 'abricotine'
  homepage 'http://abricotine.brrd.fr'
  license :gpl

  app 'Abricotine.app'
end
