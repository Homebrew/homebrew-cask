cask "studio-3t" do
  arch arm: "-aarch64"
  livecheckarch = on_arch_conditional arm: "_aarch64"

  version "2025.10.0"
  sha256 arm:   "0c56e722ccfff5428fadd5a54af94414c98d1b569f617fcce7b174459ea57106",
         intel: "e0460977f5b9d252ee838ef311006383998802d784cdeeae490a0298e39bc5f2"

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
