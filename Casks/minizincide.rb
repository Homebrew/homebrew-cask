cask "minizincide" do
  version "2.5.4"
  sha256 "8612f444dcf990709b01b2a8f6fbd2ca23219e113e43e8b66ac3dfbf4330f819"

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
