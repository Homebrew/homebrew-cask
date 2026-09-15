cask "studio-3t" do
  arch arm: "-aarch64"
  livecheckarch = on_arch_conditional arm: "_aarch64"

  version "2026.13.1"
  sha256 arm:   "a3a88fa848fc6848621cfeb4bb3828990459f30d179fbd1c64a84346bdfa14d0",
         intel: "c8bca14deb3ced63a7f4e00e25e86bb98b2f7baf16e1b28cc24b879eed0c6c53"

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

  uninstall quit: "com.install4j.0526-4458-1435-8154.837"

  zap trash: [
    "~/.3T/studio-3t",
    "~/Library/Preferences/3t.enterprise.mongochef.plist",
    "~/Library/Preferences/3t.mongochef.core.plist",
    "~/Library/Preferences/3t.mongochef.enterprise.plist",
    "~/Library/Preferences/3t.mongochef.pro.plist",
  ]
end
