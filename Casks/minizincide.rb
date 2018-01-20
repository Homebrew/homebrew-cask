cask 'minizincide' do
  version '2.1.7'
  sha256 '45a25ebb179220637dd1b38d727c4b620bcff7562c5f5984438b1135f1de94e5'

  # github.com/MiniZinc/MiniZincIDE was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast 'https://github.com/MiniZinc/MiniZincIDE/releases.atom',
          checkpoint: 'ecb8f9927cb2831ede6602baa9e66a95967f66ed150ee227b51a4b65c7dc1161'
  name 'MiniZincIDE'
  homepage 'http://www.minizinc.org/ide/index.html'

  app 'MiniZincIDE.app'
end
