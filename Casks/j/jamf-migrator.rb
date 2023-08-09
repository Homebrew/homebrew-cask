cask "jamf-migrator" do
  version "7.1.1"
  sha256 "de8738fe6449ad51bf71001180ac9156b26d636df71a5365ffe5b2beda95f8a3"

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
