cask "browserosaurus" do
  version "12.3.1"
  sha256 "1dadf4c75c76fc98be7522b062ba26cd77487b5fd8ac2e2acd66c3193ee114da"

  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-#{version}.dmg",
      verified: "github.com/will-stone/browserosaurus/"
  appcast "https://github.com/will-stone/browserosaurus/releases.atom"
  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://will-stone.github.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
