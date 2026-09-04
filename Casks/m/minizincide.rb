cask "minizincide" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.10.1"
  sha256 arm:   "6ab899c06a06bd7542f4df2b39e5afaa1658d6af30a65548a249048d1b3468bc",
         intel: "c5b50d62ab493a354ae2caa5d7fb80ea51ae53a82942b3f358461e1a4a46a2c1"

  url "https://github.com/MiniZinc/MiniZincIDE/releases/download/#{version}/MiniZincIDE-#{version}-#{arch}-apple-darwin.dmg"
  name "MiniZincIDE"
  desc "Open-source constraint modelling language and IDE"
  homepage "https://www.minizinc.org/index.html"

  depends_on macos: :monterey

  app "MiniZincIDE.app"
  binary "#{appdir}/MiniZincIDE.app/Contents/Resources/minizinc"
  binary "#{appdir}/MiniZincIDE.app/Contents/Resources/mzn2doc"

  uninstall quit: "org.minizinc.MiniZincIDE"

  zap trash: [
    "~/Library/Preferences/org.minizinc.MiniZinc IDE (bundled).plist",
    "~/Library/Saved Application State/org.minizinc.MiniZincIDE.savedState",
  ]
end
