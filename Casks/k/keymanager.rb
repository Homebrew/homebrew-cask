cask "keymanager" do
  version "4.5.5"
  sha256 "873dac496d9dfdc07ed1bd3ef12bb87d15f7cbf6c5996f9c53f096c660cb920c"

  url "https://keymanager.trustasia.com/release/KeyManager-#{version}.dmg",
      verified: "keymanager.trustasia.com/"
  name "KeyManager"
  desc "Certificate manager"
  homepage "https://keymanager.org/"

  livecheck do
    url "https://keymanager.org/release/latest.yml"
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
