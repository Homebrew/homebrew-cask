cask "browserosaurus" do
  version "13.2.0"

  if Hardware::CPU.intel?
    sha256 "17a3354e2ad6a9c7c9ba7714cc1a88d034d3b916d236fe27722ea2184a5390a7"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-x64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  else
    sha256 "d1c427a8cf6df2b92e04715a4bea9f980b9f86d7dfa7ae28d5f09a84bbb07a63"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-arm64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  end

  appcast "https://github.com/will-stone/browserosaurus/releases.atom"
  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://wstone.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
