cask "minizincide" do
  version "2.9.7"
  sha256 "504d04d3315f2a76455b71feff2cc2b3105ecd5533e8194fa2365bc41289d9d9"

  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-bundled.dmg",
      verified: "github.com/MiniZinc/MiniZincIDE/"
  name "MiniZincIDE"
  desc "Open-source constraint modelling language and IDE"
  homepage "https://www.minizinc.org/index.html"

  depends_on macos: :ventura

  app "MiniZincIDE.app"
  binary "#{appdir}/MiniZincIDE.app/Contents/Resources/minizinc"
  binary "#{appdir}/MiniZincIDE.app/Contents/Resources/mzn2doc"

  zap trash: [
    "~/Library/Preferences/org.minizinc.MiniZinc IDE (bundled).plist",
    "~/Library/Saved Application State/org.minizinc.MiniZincIDE.savedState",
  ]
end
