cask "keymanager" do
  version "4.6.0"
  sha256 "3cb63e0f3b3d2b18292c8ceba4cca32335fdfe1386cd697b67ca531e798e6756"

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
