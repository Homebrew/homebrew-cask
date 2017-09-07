cask 'abricotine' do
  version '0.5.0'
  sha256 '4f133bc46da91b7bc8f6f94370f3b7e63b1fb52acebeb6798d55025713971a20'

  # github.com/brrd/Abricotine was verified as official when first introduced to the cask
  url "https://github.com/brrd/Abricotine/releases/download/#{version}/Abricotine-osx-x64.zip"
  appcast 'https://github.com/brrd/Abricotine/releases.atom',
          checkpoint: 'be9a4802d4d549f1c617a54b757bcbdbc6816abb26f08ae5acef89a838be43df'
  name 'abricotine'
  homepage 'https://abricotine.brrd.fr/'

  app 'Abricotine-darwin-x64/Abricotine.app'
end
