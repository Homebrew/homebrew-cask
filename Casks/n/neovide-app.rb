cask "neovide-app" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.16.1"
  sha256 arm:   "69af191d01f9524432eae09dca687b950838380e901fc9d75ed963026860c9a3",
         intel: "3e223576e14046f0b2378fd375dbb85d85968fe0f77a5c56e0832967772f02b4"

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
