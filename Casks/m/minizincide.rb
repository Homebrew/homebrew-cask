cask "minizincide" do
  version "2.9.0"
  sha256 "8b5173326af6ff4cf612bf46ad14154e00a3f7db4544b2ea22525a8da7e61009"

  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg",
      verified: "github.com/MiniZinc/MiniZincIDE/"
  name "MiniZincIDE"
  desc "Open-source constraint modelling language and IDE"
  homepage "https://www.minizinc.org/index.html"

  conflicts_with formula: "minizinc"
  depends_on macos: ">= :sierra"

  app "MiniZincIDE.app"
  binary "#{appdir}/MiniZincIDE.app/Contents/Resources/minizinc"
  binary "#{appdir}/MiniZincIDE.app/Contents/Resources/mzn2doc"

  zap trash: [
    "~/Library/Preferences/org.minizinc.MiniZinc IDE (bundled).plist",
    "~/Library/Saved Application State/org.minizinc.MiniZincIDE.savedState",
  ]
end
