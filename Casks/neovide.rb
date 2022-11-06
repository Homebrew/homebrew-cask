cask "neovide" do
  version "0.10.2"
  sha256 "9730966ae3652f618d196d5bb99fbf4f7dbe1c3993c31186d7b5f32840216bc0"

  url "https://github.com/neovide/neovide/releases/download/#{version}/Neovide.dmg.zip"
  name "neovide"
  desc "Neovim Client"
  homepage "https://github.com/neovide/neovide"

  app "Neovide.app"
  binary "#{appdir}/Neovide.app/Contents/MacOS/neovide"

  zap trash: "~/Library/Saved Application State/com.neovide.neovide"
end
