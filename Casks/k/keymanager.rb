cask "keymanager" do
  arch arm: "-arm64"

  version "4.7.0"
  sha256 arm:   "3f8f57626280fd077b8b87367e13b73d5ca8516c5466c0cb19ebd3e93b6f88ee",
         intel: "6da925f07930b409f28ca77f148f55f409075bdd0f393b1bbdf2eaffdf5a5fff"

  url "https://keymanager.trustasia.com/release/KeyManager-#{version}#{arch}.dmg",
      verified: "keymanager.trustasia.com/"
  name "KeyManager"
  desc "Certificate manager"
  homepage "https://keymanager.org/"

  livecheck do
    url "https://keymanager.trustasia.com/release/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "KeyManager.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/keymanager.sfl*",
    "~/Library/Application Support/keymanager",
    "~/Library/Logs/keymanager",
    "~/Library/Preferences/keymanager.plist",
    "~/Library/Saved Application State/keymanager.savedState",
  ]
end
