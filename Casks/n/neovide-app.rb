cask "neovide-app" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.15.1"
  sha256 arm:   "8f23de1979b52cbaf3aa7d5672c33b7422a89e836a7be0f213e315f0a145fb3d",
         intel: "72171c9983d9b049df7381e0abb3d15bee74add49852c6dd80352e271099e232"

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
