cask "browserosaurus" do
  version "14.3.0"

  if Hardware::CPU.intel?
    sha256 "4fd226737ed1d62c0fa918926407bdabcd0fb818c32c2b3d02945489bf832e9a"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-x64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  else
    sha256 "cb3f0222b4472cf5265bf9da26a89416b661a020660bd096547c5e789b7f30fd"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-arm64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  end

  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://wstone.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
