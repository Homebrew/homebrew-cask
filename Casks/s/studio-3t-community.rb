cask "studio-3t-community" do
  arch arm: "-aarch64"
  livecheck_arch = on_arch_conditional arm: "aarch64"

  version "2025.1.0"
  sha256 arm:   "8bb1055aacb27d40b56ee5183ef40a86d6d44d84e85602c6f0ad71bf997c5031",
         intel: "3989252ae68ab2700a766490dcb3fa20db1757a41ec865c59ad0ff2f6382b994"

  url "https://download-ce.studio3t.com/studio-3t/mac#{arch}/#{version}/Studio-3T-Community-Edition.dmg",
      verified: "download-ce.studio3t.com/"
  name "Studio 3T Community Edition"
  desc "IDE, client, and GUI for MongoDB"
  homepage "https://robomongo.org/"

  livecheck do
    url "https://url.3t.io/studio3tcemac#{livecheck_arch}"
    regex(%r{/v?(\d+(?:\.\d+)+)/Studio[._-]?3T[._-]Community[._-]Edition\.dmg}i)
    strategy :header_match
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
