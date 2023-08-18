cask "neovide" do
  version "0.11.1"
  sha256 "30a4d9b3303086f2beac8926059efec1796c59cce38772f17d479083523c00cb"

  url "https://github.com/neovide/neovide/releases/download/#{version}/Neovide.dmg.zip"
  name "neovide"
  desc "Neovim Client"
  homepage "https://github.com/neovide/neovide"

  depends_on formula: "neovim"

  app "Neovide.app"
  binary "#{appdir}/Neovide.app/Contents/MacOS/neovide"

  zap trash: "~/Library/Saved Application State/com.neovide.neovide"
end
