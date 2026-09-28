cask "studio-3t" do
  arch arm: "-aarch64"
  livecheckarch = on_arch_conditional arm: "_aarch64"

  version "2026.14.0"
  sha256 arm:   "9f02a6048a6848e69cef508f1a85051284674bdf65fbfd0baf4c2a6f8efe80f3",
         intel: "9763f9c5010cbc3238fe837b43e3449a158595fd1515ba06b880419bea29deb1"

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
