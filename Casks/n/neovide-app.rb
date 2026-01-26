cask "neovide-app" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.15.2"
  sha256 arm:   "8c672ce737796e648a706ee69191c557ebe56fe07f998904014fc05f19e53fad",
         intel: "c7a8d29cc75d72a943c91d2519429b5dc5c55f9a50ea28bb80bb2272f60ddb13"

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
