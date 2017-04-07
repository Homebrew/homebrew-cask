cask 'minizincide' do
  version '2.1.4'
  sha256 '7ea43eb8aa51deeb259610f15da46cab36c80781b99eb102cc946b24fd550624'

  # github.com/MiniZinc/MiniZincIDE was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast 'https://github.com/MiniZinc/MiniZincIDE/releases.atom',
          checkpoint: '63c3d0c1bf56af919bc5ca96ba0c2a04a6a7abcd2e5e758366f9f684415e7e57'
  name 'MiniZincIDE'
  homepage 'http://www.minizinc.org/ide/index.html'

  app 'MiniZincIDE.app'
end
