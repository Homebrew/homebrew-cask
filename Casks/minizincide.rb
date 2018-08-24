cask 'minizincide' do
  version '2.2.0'
  sha256 '0cd1e9e85e70ecd84ce30046cecc03e7abe625b1a0925636011bab9ff500b686'

  # github.com/MiniZinc/MiniZincIDE was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast 'https://github.com/MiniZinc/MiniZincIDE/releases.atom'
  name 'MiniZincIDE'
  homepage 'http://www.minizinc.org/ide/index.html'

  app 'MiniZincIDE.app'
end
