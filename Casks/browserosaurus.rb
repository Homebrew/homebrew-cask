cask "browserosaurus" do
  version "13.0.1"
  sha256 "467f8710c21cba07f35f7dc763b93aca5a8a4c422a6184e551f3b2173c7b195f"

  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-x64-#{version}.zip",
      verified: "github.com/will-stone/browserosaurus/"
  appcast "https://github.com/will-stone/browserosaurus/releases.atom"
  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://wstone.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
