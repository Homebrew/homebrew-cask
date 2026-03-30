cask "keymanager" do
  version "4.7.0"
  sha256 "6da925f07930b409f28ca77f148f55f409075bdd0f393b1bbdf2eaffdf5a5fff"

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
