cask "jamf-migrator" do
  version "5.4.0,1"
  sha256 :no_check

  url "https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip"
  appcast "https://github.com/jamf/JamfMigrator/releases.atom"
  name "JamfMigrator"
  desc "Tool to migrate data granularly between Jamf Pro servers"
  homepage "https://github.com/jamf/JamfMigrator"

  depends_on macos: ">= :sierra"

  app "jamf-migrator.app"
end
