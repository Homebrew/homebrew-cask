cask 'minizincide' do
  version '2.1.2'
  sha256 'a8c31cb362b1f8514f5a1a0516dcc41cefc2af5c1fa3cc54941422e65c42b921'

  # github.com/MiniZinc/MiniZincIDE was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast 'https://github.com/MiniZinc/MiniZincIDE/releases.atom',
          checkpoint: 'ed427dd915c7e01108d943422d495182c176542e56c420a27c27c5fc121ac6aa'
  name 'MiniZincIDE'
  homepage 'https://www.minizinc.org/ide/index.html'

  app 'MiniZincIDE.app'
end
