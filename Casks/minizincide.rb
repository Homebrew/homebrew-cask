cask 'minizincide' do
  version '2.3.0'
  sha256 '7ca32f5e54006fbd6defdc4759458c1d8654ddc6a690ec53e918b6144a55c35d'

  # github.com/MiniZinc/MiniZincIDE was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast 'https://github.com/MiniZinc/MiniZincIDE/releases.atom'
  name 'MiniZincIDE'
  homepage 'https://www.minizinc.org/ide/index.html'

  app 'MiniZincIDE.app'
end
