cask 'minizincide' do
  version '2.1.6'
  sha256 'f352d27136da50f0c33d3372d30dc061e7f5f9cf0a7e654b53a5dde53940417d'

  # github.com/MiniZinc/MiniZincIDE was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast 'https://github.com/MiniZinc/MiniZincIDE/releases.atom',
          checkpoint: '70888ec595a2ceea223addec1ad904f14721180fd5142cd6420df6924404e221'
  name 'MiniZincIDE'
  homepage 'http://www.minizinc.org/ide/index.html'

  app 'MiniZincIDE.app'
end
