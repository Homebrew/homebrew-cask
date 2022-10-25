cask "jamf-migrator" do
  version "7.0.1"
  sha256 "ce0106e984cf84e7d5279b9a35aede3fba932396bbe9fa2164936d2befba1207"

  url "https://github.com/jamf/JamfMigrator/releases/download/v#{version}/jamf-migrator.zip"
  name "JamfMigrator"
  desc "Tool to migrate data granularly between Jamf Pro servers"
  homepage "https://github.com/jamf/JamfMigrator"

  depends_on macos: ">= :high_sierra"

  app "jamf-migrator.app"
end
