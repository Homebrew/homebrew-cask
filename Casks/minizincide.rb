cask 'minizincide' do
  version '2.0.13'
  sha256 '0340e6c66c0dc9c42739771685cce5e5d25a04615ab6479235e674555238f374'

  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  name 'MiniZincIDE'
  homepage 'http://www.minizinc.org/ide/index.html'
  license :mpl

  app 'MiniZincIDE.app'
end
