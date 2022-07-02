cask "neovide" do
  version "0.9.0"
  sha256 "b7e2843d5db0e1d5bde4d5f6919d5bc8c4f9e799182adb99b2dc3f81b6d0f714"

  url "https://github.com/neovide/neovide/releases/download/#{version}/Neovide.dmg.zip"
  name "neovide"
  desc "Neovim Client"
  homepage "https://github.com/neovide/neovide"

  app "Neovide.app"
  binary "#{appdir}/Neovide.app/Contents/MacOS/neovide"

  zap trash: "~/Library/Saved Application State/com.neovide.neovide"
end
