cask "neovide" do
  version "0.10.3"
  sha256 "fa8ba98289bb36951bd6ae14a24ec4137cecec98bcb16b5776f5820ad7c85459"

  url "https://github.com/neovide/neovide/releases/download/#{version}/Neovide.dmg.zip"
  name "neovide"
  desc "Neovim Client"
  homepage "https://github.com/neovide/neovide"

  app "Neovide.app"
  binary "#{appdir}/Neovide.app/Contents/MacOS/neovide"

  zap trash: "~/Library/Saved Application State/com.neovide.neovide"
end
