cask 'abricotine' do
  version '0.5.0'
  sha256 '4f133bc46da91b7bc8f6f94370f3b7e63b1fb52acebeb6798d55025713971a20'

  # github.com/brrd/Abricotine was verified as official when first introduced to the cask
  url "https://github.com/brrd/Abricotine/releases/download/#{version}/Abricotine-osx-x64.zip"
  appcast 'https://github.com/brrd/Abricotine/releases.atom',
          checkpoint: 'b68be4c95fd5f87d83e28659227518a6295167ce4781b91779d7e46758443239'
  name 'abricotine'
  homepage 'https://abricotine.brrd.fr/'

  app 'Abricotine-darwin-x64/Abricotine.app'
end
