cask 'minizincide' do
  version '2.1.7'
  sha256 '6446323ed5dec8ba7ce7007683d3b35565eee6603169d2351e6f826197cad371'

  # github.com/MiniZinc/MiniZincIDE was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast 'https://github.com/MiniZinc/MiniZincIDE/releases.atom'
  name 'MiniZincIDE'
  homepage 'http://www.minizinc.org/ide/index.html'

  app 'MiniZincIDE.app'
end
