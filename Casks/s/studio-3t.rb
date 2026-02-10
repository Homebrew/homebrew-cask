cask "studio-3t" do
  arch arm: "-aarch64"
  livecheckarch = on_arch_conditional arm: "_aarch64"

  version "2026.2.0"
  sha256 arm:   "9dda4add2938d411a17dc4cddd5e98e65a24ff6b1b15446af6f5b8a67edf9e6a",
         intel: "7b299ae1b1c43c25e88dba46103cafefd7a66545532d6098fb2a333bd89b2295"

  url "https://download.studio3t.com/studio-3t/mac#{arch}/#{version}/Studio-3T.dmg"
  name "Studio 3T"
  desc "IDE, client, and GUI for MongoDB"
  homepage "https://studio3t.com/"

  livecheck do
    url "https://studio3t.com/download-thank-you/?OS=osx#{livecheckarch}"
    regex(%r{/v?(\d+(?:\.\d+)+)/Studio[._-]?3T\.dmg}i)
  end

  auto_updates true

  app "Studio 3T.app"

  zap trash: [
    "~/.3T/studio-3t/",
    "~/Library/Preferences/3t.enterprise.mongochef.plist",
    "~/Library/Preferences/3t.mongochef.core.plist",
    "~/Library/Preferences/3t.mongochef.enterprise.plist",
    "~/Library/Preferences/3t.mongochef.pro.plist",
  ]
end
