cask "neovide-app" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.16.2"
  sha256 arm:   "5eb745ea7f20cf00491a8ffd8d793c6169ef1c6e1a0f75ae8be40571e65c6b26",
         intel: "e84f7e585a688ac29073927fedeb1ff40419a558fffd9c021cb14a29db10bb41"

  url "https://github.com/neovide/neovide/releases/download/#{version}/Neovide-#{arch}-apple-darwin.dmg"
  name "Neovide"
  desc "Neovim Client"
  homepage "https://github.com/neovide/neovide"

  depends_on :macos
  depends_on formula: "neovim"

  app "Neovide.app"
  binary "#{appdir}/Neovide.app/Contents/MacOS/neovide"

  zap trash: [
    "~/Library/Application Support/neovide",
    "~/Library/Saved Application State/com.neovide.neovide.savedState",
  ]
end
