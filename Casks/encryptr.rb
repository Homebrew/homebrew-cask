cask "encryptr" do
  version "2.1.0"
  sha256 :no_check

  url "https://spideroak.com/release/Encryptr/osx",
      verified: "https://spideroak.com/"
  name "SpiderOak Encryptr"
  desc "Zero-knowledge cloud-based password manager"
  homepage "https://spideroak.support/hc/en-us/categories/115000424503-Encryptr-Password-Manager"

  livecheck do
    url :url
    strategy :header_match
  end

  app "Encryptr.app"

  zap trash: [
    "~/Library/Preferences/org.devgeeks.encryptr.plist",
    "~/Library/Saved Application State/org.devgeeks.encryptr.savedState",
  ]

  caveats do
    discontinued
  end
end
