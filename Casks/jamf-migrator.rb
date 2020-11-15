cask "jamf-migrator" do
  version "5.4.0"
  sha256 "46cd40b955b663604c9ecbfc23590029d5862743403f2b56d6da65c4f2b98180"

  url "https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip"
  appcast "https://github.com/jamf/JamfMigrator/releases.atom"
  name "JamfMigrator"
  desc "Tool to migrate data granularly between Jamf Pro servers"
  homepage "https://github.com/jamf/JamfMigrator"

  depends_on macos: ">= :sierra"

  app "jamf-migrator.app"
end
