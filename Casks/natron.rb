cask "natron" do
  version "2.5.0"

  if MacOS.version <= :mojave
    sha256 "3439b15559ef8f2e0f52aafb2973be1584922a35ec398d20a74011ec838b9bf0"
    url "https://github.com/NatronGitHub/Natron/releases/download/v#{version}/Natron-#{version}-OSX109-x86_64.dmg",
        verified: "github.com/NatronGitHub/Natron/"
  elsif MacOS.version <= :catalina
    sha256 "89ca3cca577a49023c03bb617be2a694e71fd4b8f1b1a2bbf83560f3f1450d7a"
    url "https://github.com/NatronGitHub/Natron/releases/download/v#{version}/Natron-#{version}-macOS1015-x86_64.dmg",
        verified: "github.com/NatronGitHub/Natron/"
  else
    sha256 "7a4452378914056a70ad04af9be41476f6ce428a5d7a6ddbfcc0c0195e7abdca"
    url "https://github.com/NatronGitHub/Natron/releases/download/v#{version}/Natron-#{version}-macOS12-x86_64.dmg",
        verified: "github.com/NatronGitHub/Natron/"
  end

  name "Natron"
  desc "Open-source node-graph based video compositing software"
  homepage "https://NatronGitHub.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Natron.app"
end
