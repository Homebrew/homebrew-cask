cask "studio-3t" do
  arch arm: "-aarch64"
  livecheckarch = on_arch_conditional arm: "_aarch64"

  version "2026.15.0"
  sha256 arm:   "8fc6115cf765926b74a8f9ff5835f4d440215b6192c9e41491d6d4dab25e5c10",
         intel: "947cb67f0acfcadd089f6ea69c9ab7db198b4e94a17bb84194d8e4038a2c1521"

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
    "~/Library/Caches/com.install4j.0526-4458-1435-8154.837",
    "~/Library/HTTPStorages/com.install4j.0526-4458-1435-8154.837",
    "~/Library/Preferences/3t.enterprise.mongochef.plist",
    "~/Library/Preferences/3t.mongochef.core.plist",
    "~/Library/Preferences/3t.mongochef.enterprise.plist",
    "~/Library/Preferences/3t.mongochef.pro.plist",
    "~/Library/Preferences/com.install4j.0526-4458-1435-8154.837.plist",
  ]
end
