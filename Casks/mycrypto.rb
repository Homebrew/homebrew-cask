cask "mycrypto" do
  version "1.7.13"
  sha256 "de7f1133f9ea2c8aeb1c1f58c8ae0c864b79a956dc99904debe72fa5f707382c"

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
