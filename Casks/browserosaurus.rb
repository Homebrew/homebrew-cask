cask "browserosaurus" do
  version "14.0.2"

  if Hardware::CPU.intel?
    sha256 "487c80a6165d8254e6ce1affde6f1039fa7c34ef9bb54d08c766323b4ff7cfda"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-x64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  else
    sha256 "c88d44012482f0661b47cd37b9891a61993e893091aada3565b14462aae64f31"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-arm64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  end

  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://wstone.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
