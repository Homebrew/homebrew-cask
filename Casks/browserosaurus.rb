cask "browserosaurus" do
  version "15.0.6"

  if Hardware::CPU.intel?
    sha256 "446967f2187222e88c33842338786365db33af9b8050d6d8f4f173a3cba8d642"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-x64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  else
    sha256 "85b38a8bbb5720c838edc22824b1e115a1fd31f04a96ed2cd87e4403cf7648d3"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-arm64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  end

  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://wstone.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
