cask "browserosaurus" do
  version "14.1.3"

  if Hardware::CPU.intel?
    sha256 "ad809f1da419a89906d111aaaae9c00b881832a5c51b8b900ff489f5d71ad27f"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-x64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  else
    sha256 "e96f1bd1fdc3bedeb5423d7aa0b2b43925d125c3a138fb2b8fd9716ea198caf9"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-arm64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  end

  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://wstone.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
