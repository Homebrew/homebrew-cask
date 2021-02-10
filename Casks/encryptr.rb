cask "encryptr" do
  version "2.1.0"
  sha256 :no_check

  url "https://spideroak.com/release/Encryptr/osx"
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
