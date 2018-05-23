cask 'minizincide' do
  version '2.1.7'
  sha256 '6446323ed5dec8ba7ce7007683d3b35565eee6603169d2351e6f826197cad371'

  # github.com/MiniZinc/MiniZincIDE was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast 'https://github.com/MiniZinc/MiniZincIDE/releases.atom',
          checkpoint: 'b381f07fb5f0a7b2c97edcf3e53d47038c015df202fece1124de6c4a80b00690'
  name 'MiniZincIDE'
  homepage 'http://www.minizinc.org/ide/index.html'

  app 'MiniZincIDE.app'
end
