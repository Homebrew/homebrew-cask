cask "natron" do
  version "2.4.3"

  if MacOS.version <= :mojave
    sha256 "437979f4b94e718d7e7eb399715f851734900b7453bd3fe6a41d3a43e733a95a"
    url "https://github.com/NatronGitHub/Natron/releases/download/vsha/Natron-#{version}-OSX109-x86_64.dmg",
        verified: "github.com/NatronGitHub/Natron/"
  elsif MacOS.version <= :catalina
    sha256 "89ca3cca577a49023c03bb617be2a694e71fd4b8f1b1a2bbf83560f3f1450d7a"
    url "https://github.com/NatronGitHub/Natron/releases/download/v#{version}/Natron-#{version}-macOS1015-x86_64.dmg",
        verified: "github.com/NatronGitHub/Natron/"
  else
    sha256 "2801d03d6829532953b78eafb42d543d6c56ba338eb53435fa20ff89ba2d7a65"
    url "https://github.com/NatronGitHub/Natron/releases/download/v#{version}/Natron-#{version}-macOS12-x86_64.dmg",
        verified: "github.com/NatronGitHub/Natron/"
  end

  name "Natron"
  desc "Open-source node-graph based video compositing software"
  homepage "https://NatronGitHub.github.io/"

  app "Natron.app"
end
