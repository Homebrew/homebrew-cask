cask "neovide" do
  version "0.11.2"
  sha256 "23a6c829094a02d69f1b302b0b3883e91b5725b19f0e3140f35dfe3bf296e988"

  url "https://github.com/neovide/neovide/releases/download/#{version}/Neovide.dmg.zip"
  name "neovide"
  desc "Neovim Client"
  homepage "https://github.com/neovide/neovide"

  depends_on formula: "neovim"

  app "Neovide.app"
  binary "#{appdir}/Neovide.app/Contents/MacOS/neovide"

  zap trash: "~/Library/Saved Application State/com.neovide.neovide"
end
