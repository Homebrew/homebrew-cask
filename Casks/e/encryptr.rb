cask "encryptr" do
  version "2.1.0"
  sha256 :no_check

  url "https://spideroak.com/release/Encryptr/osx",
      verified: "spideroak.com/"
  name "SpiderOak Encryptr"
  desc "Zero-knowledge cloud-based password manager"
  homepage "https://spideroak.support/hc/en-us/categories/115000424503-Encryptr-Password-Manager"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Encryptr.app"

  zap trash: [
    "~/Library/Preferences/org.devgeeks.encryptr.plist",
    "~/Library/Saved Application State/org.devgeeks.encryptr.savedState",
  ]
end
