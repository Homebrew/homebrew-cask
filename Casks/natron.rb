cask "natron" do
  version "2.4.0"
  sha256 "cdcb9ec4a193b10e25d7bdc9d5e265b3e5224a9b1822b5b3f25bcf9440dde52e"

  url "https://github.com/NatronGitHub/Natron/releases/download/v#{version}/Natron-#{version}-OSX-64.dmg",
      verified: "github.com/NatronGitHub/Natron/"
  name "Natron"
  desc "Open-source node-graph based video compositing software"
  homepage "https://NatronGitHub.github.io/"

  app "Natron.app"
end
