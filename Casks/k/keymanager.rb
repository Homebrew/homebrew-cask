cask "keymanager" do
  version "4.5.9"
  sha256 "a91b7fa1a4774d089f2918cacb95a94adbecf0c6f30aa1ba4211f58662139e54"

  url "https://keymanager.trustasia.com/release/KeyManager-#{version}.dmg",
      verified: "keymanager.trustasia.com/"
  name "KeyManager"
  desc "Certificate manager"
  homepage "https://keymanager.org/"

  livecheck do
    url "https://keymanager.trustasia.com/release/latest-mac.yml"
    strategy :electron_builder
  end

  app "KeyManager.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/keymanager.sfl*",
    "~/Library/Application Support/keymanager",
    "~/Library/Logs/keymanager",
    "~/Library/Preferences/keymanager.plist",
    "~/Library/Saved Application State/keymanager.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
