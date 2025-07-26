cask "studio-3t-community" do
  arch arm: "-aarch64"
  livecheckarch = on_arch_conditional arm: "_aarch64"
  version "2025.1.0"

  sha256 arm:   "8bb1055aacb27d40b56ee5183ef40a86d6d44d84e85602c6f0ad71bf997c5031",
         intel: "3989252ae68ab2700a766490dcb3fa20db1757a41ec865c59ad0ff2f6382b994"

  url "https://download-ce.studio3t.com/studio-3t/mac#{arch}/#{version}/Studio-3T-Community-Edition.dmg"

  name "Studio 3T Community Edition"
  desc "Community Edition of IDE, client, and GUI for MongoDB"
  homepage "https://studio3t.com/"

  livecheck do
    url "https://studio3t.com/download-thank-you/?OS=osx#{livecheckarch}"
    regex(%r{/v?(\d+(?:\.\d+)+)/Studio[._-]?3T\.dmg}i)
  end

  auto_updates true

  app "Studio 3T Community Edition.app"

  zap trash: [
    "~/.3T/studio-3t/",
    "~/Library/Preferences/3t.enterprise.mongochef.plist",
    "~/Library/Preferences/3t.mongochef.core.plist",
    "~/Library/Preferences/3t.mongochef.enterprise.plist",
    "~/Library/Preferences/3t.mongochef.pro.plist",
  ]
end
