cask 'abricotine' do
  version '0.2.3'
  sha256 '2a540ff77f1076660805ca3fde507f0095ae6a1ce83aade3e9f07613259a21f7'

  url 'https://github.com/brrd/Abricotine/releases/download/0.2.2/Abricotine-osx-x64.zip'
  name 'abricotine'
  homepage 'http://abricotine.brrd.fr'
  license :gpl

  app 'Abricotine.app'
end
