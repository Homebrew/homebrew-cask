cask "browserosaurus" do
  version "14.2.1"

  if Hardware::CPU.intel?
    sha256 "cbe34f8947a305e2ad6bf5e6c6e90abdc3f3e2be6b3dd19d0cd436d471847ab1"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-x64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  else
    sha256 "0c18b1a504351208be09a596dfc2ce963a3e947ef356081e3d2c11afbac3653f"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-arm64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  end

  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://wstone.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
