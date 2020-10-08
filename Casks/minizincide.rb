cask "minizincide" do
  version "2.5.0"
  sha256 "17b76953487f7c2a5f415be35b62e1af5d9b38863c1e237c72af92720f89d521"

  # github.com/MiniZinc/MiniZincIDE/ was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast "https://github.com/MiniZinc/MiniZincIDE/releases.atom"
  name "MiniZincIDE"
  desc "Open-source constraint modeling language and IDE"
  homepage "https://www.minizinc.org/index.html"

  app "MiniZincIDE.app"
  binary "#{appdir}/MiniZincIDE.app/Contents/Resources/minizinc"
  binary "#{appdir}/MiniZincIDE.app/Contents/Resources/mzn2doc"
end
