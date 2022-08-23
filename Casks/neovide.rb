cask "neovide" do
  version "0.10.1"
  sha256 "c00db44a4cf32bd746c365e9f472a13f118acac1dc876313bfba74d0cc8f9ebe"

  url "https://github.com/neovide/neovide/releases/download/#{version}/Neovide.dmg.zip"
  name "neovide"
  desc "Neovim Client"
  homepage "https://github.com/neovide/neovide"

  app "Neovide.app"
  binary "#{appdir}/Neovide.app/Contents/MacOS/neovide"

  zap trash: "~/Library/Saved Application State/com.neovide.neovide"
end
