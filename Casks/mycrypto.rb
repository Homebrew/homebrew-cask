cask "mycrypto" do
  version "1.7.16"
  sha256 "7f9ea24685bc6954274b483c09a99b2b179f18ab413f85e30b515991437e21b8"

  url "https://github.com/MyCryptoHQ/MyCrypto/releases/download/#{version}/mac_#{version}_MyCrypto.dmg",
      verified: "github.com/MyCryptoHQ/MyCrypto/"
  name "MyCrypto"
  desc "Ethereum wallet manager"
  homepage "https://mycrypto.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "MyCrypto.app"

  zap trash: [
    "~/Library/Application Support/MyCrypto",
    "~/Library/Logs/MyCrypto",
    "~/Library/Preferences/com.github.mycrypto.mycryptohq.helper.plist",
    "~/Library/Preferences/com.github.mycrypto.mycryptohq.plist",
    "~/Library/Saved Application State/com.github.mycrypto.mycryptohq.savedState",
  ]
end
