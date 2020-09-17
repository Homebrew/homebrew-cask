cask "jamf-migrator" do
  version "5.3.1"
  sha256 "d73a6e813d4d01501afedefe0bdd7b8419ac264f052513431e0e3a18b8e8c8c7"

  url "https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip"
  appcast "https://github.com/jamf/JamfMigrator/releases.atom"
  name "JamfMigrator"
  desc "Tool to migrate data granularly between Jamf Pro servers"
  homepage "https://github.com/jamf/JamfMigrator"

  depends_on macos: ">= :sierra"

  app "jamf-migrator.app"
end
