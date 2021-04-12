cask "browserosaurus" do
  version "14.0.1"

  if Hardware::CPU.intel?
    sha256 "9e3bb07aa595f1a0f3549d5df667f402e07d1595b7b8fa3d76f0f74cc20934a1"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-x64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  else
    sha256 "d6feb17ef506ca79e188a49af157af31fc71150d14e1b36bf6a84a21bb81282d"
    url "https://github.com/will-stone/browserosaurus/releases/download/v#{version}/Browserosaurus-darwin-arm64-#{version}.zip",
        verified: "github.com/will-stone/browserosaurus/"
  end

  name "Browserosaurus"
  desc "Open-source browser prompter"
  homepage "https://wstone.io/browserosaurus/"

  auto_updates true

  app "Browserosaurus.app"
end
