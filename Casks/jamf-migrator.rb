cask "jamf-migrator" do
  version "5.3.2"
  sha256 "aadb7731a8b66e5a911664e3812857e92f9bcee3de7c77be757e6218c3ddb98f"

  url "https://github.com/jamf/JamfMigrator/releases/download/current/jamf-migrator.zip"
  appcast "https://github.com/jamf/JamfMigrator/releases.atom"
  name "JamfMigrator"
  desc "Tool to migrate data granularly between Jamf Pro servers"
  homepage "https://github.com/jamf/JamfMigrator"

  depends_on macos: ">= :sierra"

  app "jamf-migrator.app"
end
