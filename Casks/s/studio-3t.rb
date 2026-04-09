cask "studio-3t" do
  arch arm: "-aarch64"
  livecheckarch = on_arch_conditional arm: "_aarch64"

  version "2026.7.0"
  sha256 arm:   "939f2df5ff421f105ff922cdbde4e100bdbc2300811d95f33df753b422a8d443",
         intel: "cb16fc2e4424db9c86b387f44957a53a6f1548fb2ce5ad33d47913cd783f8716"

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
