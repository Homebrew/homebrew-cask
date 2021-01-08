cask "encryptr" do
  version "2.1.0"
  sha256 "7b0613067aa2cd078327564273d7b907df09417dc20bb7d26d83974d487cf163"

  url "https://spideroak.com/dist/encryptr/signed/osx/Encryptr-v#{version}-osx.dmg"
  appcast "https://github.com/SpiderOak/Encryptr/releases.atom"
  name "SpiderOak Encryptr"
  desc "Zero-knowledge cloud-based password manager"
  homepage "https://spideroak.com/encryptr/"

  app "Encryptr.app"

  zap trash: [
    "~/Library/Preferences/org.devgeeks.encryptr.plist",
    "~/Library/Saved Application State/org.devgeeks.encryptr.savedState",
  ]
end
