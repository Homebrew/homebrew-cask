cask "natron" do
  version "2.4.1"
  sha256 "c7434206bb81700bf62644d9d0e3c46f576dc002a125923afee751eddcfc8406"

  url "https://github.com/NatronGitHub/Natron/releases/download/v#{version}/Natron-#{version}-macOS11-x86_64.dmg",
      verified: "github.com/NatronGitHub/Natron/"
  name "Natron"
  desc "Open-source node-graph based video compositing software"
  homepage "https://NatronGitHub.github.io/"

  app "Natron.app"
end
