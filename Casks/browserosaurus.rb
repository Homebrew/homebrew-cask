cask "browserosaurus" do
  version "14.2.0"

  if Hardware::CPU.intel?
    sha256 "e869212101c9b05ae264fa0ab2e648214e5f5c9d19485269e5f5b46985d3986b"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-x64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  else
    sha256 "115e331fe9fcd647e190f84e9de903ab9be115873a19b9e506e619100e4eccdd"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-arm64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  end

  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://wstone.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
