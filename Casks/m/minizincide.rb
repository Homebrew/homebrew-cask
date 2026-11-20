cask "minizincide" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.11.0"
  sha256 arm:   "4ac0f50a5b504bebc34eb82ee34daeb094a25e012ba5d424b8c3641b4e37c2e1",
         intel: "cbe5533046a97173cd698f9913aee0ec4cf84e2746924f627cbada798ed3aa93"

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
