cask 'minizincide' do
  version '2.1.1'
  sha256 '72dd93989b660aee48a2cb9ef62dd533b56071c8ff53f7b5956b0993682f3e01'

  # github.com/MiniZinc/MiniZincIDE was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast 'https://github.com/MiniZinc/MiniZincIDE/releases.atom',
          checkpoint: '6c2ed7d2671a278ede08ca9d8887581870780c81928452ee3ec6819c39897a93'
  name 'MiniZincIDE'
  homepage 'https://www.minizinc.org/ide/index.html'

  app 'MiniZincIDE.app'
end
