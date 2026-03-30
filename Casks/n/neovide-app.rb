cask "neovide-app" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.16.0"
  sha256 arm:   "5a684cb84ccf45623162b99eb0fc5d2819f3762566fd0bb07b742bf251de32c2",
         intel: "da91c7afe76db2d31caf886d65d97f79c83539fb3881bf951d48459a8d26f7c5"

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
