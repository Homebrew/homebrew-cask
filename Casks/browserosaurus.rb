cask "browserosaurus" do
  version "13.1.0"
  sha256 "cd334fcadf32ceb45f8d2cb3aba9bc536a9b58e2269c4ba887671684d320793a"

  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-x64-#{version}.zip",
      verified: "github.com/will-stone/browserosaurus/"
  appcast "https://github.com/will-stone/browserosaurus/releases.atom"
  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://wstone.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
