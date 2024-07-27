cask "mycrypto" do
  version "1.7.17"
  sha256 "8fe2652697b0557f7e221d0c960aa9e36a54445f12e7396a193cc5c5ad6ded06"

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

  caveats do
    requires_rosetta
  end
end
