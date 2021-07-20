cask "browserosaurus" do
  version "15.1.2"

  if Hardware::CPU.intel?
    sha256 "c22210139cd473fcba095605fc94221d8fe2eaaed07469b7d0bbaa363a953f96"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-x64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  else
    sha256 "f1e16692e42115d99fab14c1001ce37bf53db10919bb360e8bd4b3b34cdcf348"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-arm64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  end

  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://wstone.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
