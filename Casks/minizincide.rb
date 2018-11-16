cask 'minizincide' do
  version '2.2.3'
  sha256 '14fa33f4171e6a514ae60b615a22198e3c7c4b11f4a9a17d8ae2ebc7e1bf15e6'

  # github.com/MiniZinc/MiniZincIDE was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast 'https://github.com/MiniZinc/MiniZincIDE/releases.atom'
  name 'MiniZincIDE'
  homepage 'https://www.minizinc.org/ide/index.html'

  app 'MiniZincIDE.app'
end
