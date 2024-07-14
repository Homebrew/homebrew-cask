cask "neovide" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.13.2"
  sha256 arm:   "505647c2c5c7b2ecde96e22e68d50af3c7c1d459e0bbc308066e11864838d326",
         intel: "42a8765b24b8073bd798e11b143dc5ab06a56563f8db25441364c390f0819332"

  url "https://github.com/neovide/neovide/releases/download/#{version}/Neovide-#{arch}-apple-darwin.dmg"
  name "Neovide"
  desc "Neovim Client"
  homepage "https://github.com/neovide/neovide"

  depends_on formula: "neovim"

  app "Neovide.app"
  binary "#{appdir}/Neovide.app/Contents/MacOS/neovide"

  zap trash: "~/Library/Saved Application State/com.neovide.neovide"
end
