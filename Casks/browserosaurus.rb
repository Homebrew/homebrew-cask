cask "browserosaurus" do
  version "13.1.1"
  sha256 "077cd613e79da87e868bfb30cf364f959525cb8ecb2b8c101e3d03974a5589dc"

  url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-x64-#{version}.zip",
      verified: "github.com/will-stone/browserosaurus/"
  appcast "https://github.com/will-stone/browserosaurus/releases.atom"
  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://wstone.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
