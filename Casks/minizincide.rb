cask 'minizincide' do
  version '2.0.13'
  sha256 '0340e6c66c0dc9c42739771685cce5e5d25a04615ab6479235e674555238f374'

  # github.com/MiniZinc/MiniZincIDE was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast 'https://github.com/MiniZinc/MiniZincIDE/releases.atom',
          checkpoint: '6aae18d13995e417da3cda48e62cc6f999f6e8b7fcee6f4d2d59671276619fb1'
  name 'MiniZincIDE'
  homepage 'https://www.minizinc.org/ide/index.html'

  app 'MiniZincIDE.app'
end
