cask "neovide" do
  version "0.10.0"
  sha256 "9bdd79cd4729231ca2ac2a4a57f8426b61780dd0254cc0537ef972e0add8c953"

  url "https://github.com/neovide/neovide/releases/download/#{version}/Neovide.dmg.zip"
  name "neovide"
  desc "Neovim Client"
  homepage "https://github.com/neovide/neovide"

  app "Neovide.app"
  binary "#{appdir}/Neovide.app/Contents/MacOS/neovide"

  zap trash: "~/Library/Saved Application State/com.neovide.neovide"
end
