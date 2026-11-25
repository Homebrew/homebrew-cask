cask "studio-3t" do
  arch arm: "-aarch64"
  livecheckarch = on_arch_conditional arm: "_aarch64"

  version "2026.16.0"
  sha256 arm:   "ece65c552c8670451ef59190a4b17b45068e6ede6259f67561efe823d6640c89",
         intel: "2e65d993d35ba496f9077d9a2f65a2a2eb6a8fd2fb806cddeeca4d1843f95166"

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
