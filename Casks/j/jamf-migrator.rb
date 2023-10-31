cask "jamf-migrator" do
  version "7.2.2"
  sha256 "668accafdd7e4cf981c7e1c3f54776a01606f7863541e5237089fd33f3210243"

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
