cask "studio-3t" do
  arch arm: "-aarch64"
  livecheckarch = on_arch_conditional arm: "_aarch64"

  version "2023.1.1"
  sha256 arm:   "5119274e345c903758f59953e55726e69e2f3b8cca2e21471b41010f08d0fde3",
         intel: "9b4d0fdbb1c560f00afadf9f18477a076cb74cd79c228a4bd5b05c60fc259025"

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
