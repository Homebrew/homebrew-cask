cask "natron" do
  version "2.5.0"

  if MacOS.version <= :mojave
    sha256 "4bf8ce890fe51446c01fc8480e8159cd559cfaac2445eae1699ae1718121fa7a"
    url "https://github.com/NatronGitHub/Natron/releases/download/v#{version}/Natron-#{version}-OSX109-x86_64.dmg",
        verified: "github.com/NatronGitHub/Natron/"
  elsif MacOS.version <= :catalina
    sha256 "1c97a1f373c3adcdbb933f20b02d0ebd4d7737d44e5344a372bd7b9e5211860e"
    url "https://github.com/NatronGitHub/Natron/releases/download/v#{version}/Natron-#{version}-macOS1015-x86_64.dmg",
        verified: "github.com/NatronGitHub/Natron/"
  else
    sha256 "90618183b65cab217b7892d6f0ad3254b7efebc57ef47e77790d8504dbcc7b22"
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
