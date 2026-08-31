cask "studio-3t" do
  arch arm: "-aarch64"
  livecheckarch = on_arch_conditional arm: "_aarch64"

  version "2026.13.0"
  sha256 arm:   "3192f2767ee65b7aa92deab9f4a8f5d40603e895ec3864bf9a1b99fccfca55e9",
         intel: "509bc0f0b3a786f733f249e74dd31dd70f5894435701f9d2eb52c8798a78ecfc"

  url "https://download.studio3t.com/studio-3t/mac#{arch}/#{version}/Studio-3T.dmg"
  name "Studio 3T"
  desc "IDE, client, and GUI for MongoDB"
  homepage "https://studio3t.com/"

  livecheck do
    url "https://studio3t.com/download-thank-you/?OS=osx#{livecheckarch}",
        cookies: { "3t-can-download-software" => "1" }
    regex(%r{/v?(\d+(?:\.\d+)+)/Studio[._-]?3T\.dmg}i)
  end

  auto_updates true
  depends_on :macos

  app "Studio 3T.app"

  zap trash: [
    "~/.3T/studio-3t",
    "~/Library/Preferences/3t.enterprise.mongochef.plist",
    "~/Library/Preferences/3t.mongochef.core.plist",
    "~/Library/Preferences/3t.mongochef.enterprise.plist",
    "~/Library/Preferences/3t.mongochef.pro.plist",
  ]
end
