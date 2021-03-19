cask "minizincide" do
  version "2.5.5"
  sha256 "392c45ee3c98d72e892938048f488dc9eb9788d08538f186b84b33e256013e81"

  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg",
      verified: "github.com/MiniZinc/MiniZincIDE/"
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
