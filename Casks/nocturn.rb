cask "nocturn" do
  version "1.8.3"
  sha256 "6b0c23c5c62003d724923efc36d7f51e6655ce6ac8c9e6d98bb39c49c4abc2da"

  url "https://github.com/k0kubun/Nocturn/releases/download/v#{version}/Nocturn-darwin-x64.zip"
  name "Nocturn"
  desc "Multi-platform Twitter client"
  homepage "https://github.com/k0kubun/Nocturn"

  app "Nocturn-darwin-x64/Nocturn.app"
end
