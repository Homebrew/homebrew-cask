cask 'minizincide' do
  version '2.4.3'
  sha256 'ac62403d386fd3b2471f347ce7d78fb2a5eb80fd08964c46881fc91a2603524e'

  # github.com/MiniZinc/MiniZincIDE/ was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast 'https://github.com/MiniZinc/MiniZincIDE/releases.atom'
  name 'MiniZincIDE'
  homepage 'https://www.minizinc.org/ide/index.html'

  app 'MiniZincIDE.app'
end
