cask 'minizincide' do
  version '2.4.0'
  sha256 '254fc85193d1d6006483911d76e1e45fc83b57b70dba3bd7bb136dd8cf2d1a8c'

  # github.com/MiniZinc/MiniZincIDE was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast 'https://github.com/MiniZinc/MiniZincIDE/releases.atom'
  name 'MiniZincIDE'
  homepage 'https://www.minizinc.org/ide/index.html'

  app 'MiniZincIDE.app'
end
