cask "natron" do
  version "2.4.2"

  if MacOS.version <= :mojave
    sha256 "88fcb9f9659e35e267a6f11f79b7bd94b05471a2b82c639d5d7ea4871c9a0661"
    url "https://github.com/NatronGitHub/Natron/releases/download/vsha/Natron-#{version}-OSX109-x86_64.dmg",
        verified: "github.com/NatronGitHub/Natron/"
  elsif MacOS.version <= :catalina
    sha256 "c9cf39ced992e15c6bcbc6bb1c960e36398561c5858b216f07413ccf3335efe8"
    url "https://github.com/NatronGitHub/Natron/releases/download/v#{version}/Natron-#{version}-macOS1015-x86_64.dmg",
        verified: "github.com/NatronGitHub/Natron/"
  else
    sha256 "c7434206bb81700bf62644d9d0e3c46f576dc002a125923afee751eddcfc8406"
    url "https://github.com/NatronGitHub/Natron/releases/download/v#{version}/Natron-#{version}-macOS11-x86_64.dmg",
        verified: "github.com/NatronGitHub/Natron/"
  end

  name "Natron"
  desc "Open-source node-graph based video compositing software"
  homepage "https://NatronGitHub.github.io/"

  app "Natron.app"
end
