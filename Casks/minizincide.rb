cask 'minizincide' do
  version '2.1.0'
  sha256 '73c81471f754dea1ede8d7515eaf7acc7127c96907e813a39942448d446aecf5'

  # github.com/MiniZinc/MiniZincIDE was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast 'https://github.com/MiniZinc/MiniZincIDE/releases.atom',
          checkpoint: '1cd0b856caae9f947b9735e62bffb7cd461d8bf3273dc13cd13bf63eaf6ff06a'
  name 'MiniZincIDE'
  homepage 'https://www.minizinc.org/ide/index.html'

  app 'MiniZincIDE.app'
end
