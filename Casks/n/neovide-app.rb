cask "neovide-app" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.15.1"
  sha256 arm:   "b1750f36b8bf5f7c123aaea753a5c4c4b44bc2cb89270eab5a304ba6aba95530",
         intel: "62fb5547f7443b94ccf3cd1a7ae689053804973f15a7992a0b2dbeff7450e649"

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
