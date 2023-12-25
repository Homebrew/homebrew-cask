cask "jamf-migrator" do
  version "7.4.0"
  sha256 "38df4c20158b23d8da6c37a4e0b5b65d0b09993dedd98009728b410134055a6a"

  url "https://github.com/jamf/JamfMigrator/releases/download/v#{version}/jamf-migrator.zip"
  name "JamfMigrator"
  desc "Tool to migrate data granularly between Jamf Pro servers"
  homepage "https://github.com/jamf/JamfMigrator"

  depends_on macos: ">= :high_sierra"

  app "jamf-migrator.app"

  zap trash: [
    "~/Library/Application Scripts/com.jamf.jamf-migrator",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jamf.jamf-migrator.sfl*",
    "~/Library/Containers/com.jamf.jamf-migrator",
  ]
end
