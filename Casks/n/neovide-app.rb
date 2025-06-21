cask "neovide-app" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.15.0"
  sha256 arm:   "2bec0ef972304a44971ad6e5525d597c2b8c1137426514a090ce67f926835458",
         intel: "e5137a7290dade9a1426f9f02875393433ac0c0c2aa0775ede112c3578a1082c"

  url "https://github.com/neovide/neovide/releases/download/#{version}/Neovide-#{arch}-apple-darwin.dmg"
  name "Neovide"
  desc "Neovim Client"
  homepage "https://github.com/neovide/neovide"

  depends_on formula: "neovim"

  app "Neovide.app"
  binary "#{appdir}/Neovide.app/Contents/MacOS/neovide"

  zap trash: [
    "~/Library/Application Support/neovide",
    "~/Library/Saved Application State/com.neovide.neovide.savedState",
  ]
end
