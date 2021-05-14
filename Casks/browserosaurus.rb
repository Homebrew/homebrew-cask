cask "browserosaurus" do
  version "14.1.2"

  if Hardware::CPU.intel?
    sha256 "1cf01c5cfe9a49013b777bee0bbc8a2ff1099bd4a252b25b3341dbb24a2c796c"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-x64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  else
    sha256 "7a7ed77fcc6aba7074542a427c8479d5d86334df1825b7670d1a699f62275284"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-arm64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  end

  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://wstone.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
