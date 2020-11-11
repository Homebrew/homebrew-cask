cask "minizincide" do
  version "2.5.2"
  sha256 "5bedf0f3acb816dfefcbaf883cbf2a1a5830f7da3544ecdaf85d75d8c7612115"

  # github.com/MiniZinc/MiniZincIDE/ was verified as official when first introduced to the cask
  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg"
  appcast "https://github.com/MiniZinc/MiniZincIDE/releases.atom"
  name "MiniZincIDE"
  desc "Open-source constraint modeling language and IDE"
  homepage "https://www.minizinc.org/index.html"

  conflicts_with formula: "minizinc"
  depends_on macos: ">= :sierra"

  app "MiniZincIDE.app"
  binary "#{appdir}/MiniZincIDE.app/Contents/Resources/minizinc"
  binary "#{appdir}/MiniZincIDE.app/Contents/Resources/mzn2doc"
end
