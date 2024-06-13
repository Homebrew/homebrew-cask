cask "popsql" do
  arch arm: "-arm64"

  version "1.0.129"
  sha256 arm:   "434b37ba2c6065f8add58715c3b02e61c071fbebbbd45e826da3cf85a1f48376",
         intel: "95a0cf6cb608b992ad5665a3c36fe0d8347c378fa0a28d8c46d27761caee8d04"

  url "https://popsql-releases.s3.amazonaws.com/mac/PopSQL-#{version}#{arch}.dmg",
      verified: "popsql-releases.s3.amazonaws.com/"
  name "PopSQL"
  desc "Collaborative SQL editor"
  homepage "https://popsql.com/"

  livecheck do
    url "https://popsql-releases.s3.amazonaws.com/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "PopSQL.app"

  zap trash: [
    "~/.popsql.json",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.electron.popsql.sfl*",
    "~/Library/Application Support/PopSQL",
    "~/Library/Preferences/org.electron.popsql.plist",
    "~/Library/Saved Application State/org.electron.popsql.savedState",
  ]
end
