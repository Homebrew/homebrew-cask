cask "nocturn" do
  version "1.8.2"
  sha256 "5ec4c8d1e209d2a2f10d46ea8b4e0f16ddcdc28bebb76affba55560d7dfb3a2d"

  url "https://github.com/k0kubun/Nocturn/releases/download/v#{version}/Nocturn-darwin-x64.zip"
  appcast "https://github.com/k0kubun/Nocturn/releases.atom"
  name "Nocturn"
  desc "Multi-platform Twitter client"
  homepage "https://github.com/k0kubun/Nocturn"

  app "Nocturn-darwin-x64/Nocturn.app"
end
