cask "minizincide" do
  version "2.8.6"
  sha256 "f7f55bdc3b95f12b3405b43448295675ca613a9ade931e3a16cf5c727b2f976e"

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
