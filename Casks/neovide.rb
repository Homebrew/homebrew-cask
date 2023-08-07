cask "neovide" do
  version "0.11.0"
  sha256 "0ca601a28f4fc89e6a5514699064358d3b30fd37f3049a5f1c4dd3655d7e640d"

  url "https://github.com/neovide/neovide/releases/download/#{version}/Neovide.dmg.zip"
  name "neovide"
  desc "Neovim Client"
  homepage "https://github.com/neovide/neovide"

  depends_on formula: "neovim"

  app "Neovide.app"
  binary "#{appdir}/Neovide.app/Contents/MacOS/neovide"

  zap trash: "~/Library/Saved Application State/com.neovide.neovide"
end
