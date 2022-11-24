cask "jamf-migrator" do
  version "7.0.2"
  sha256 "2096d1ba4f0ae03689af7ce7947f660cce4531163d7d2021cb2e770e200aa50b"

  url "https://github.com/jamf/JamfMigrator/releases/download/v#{version}/jamf-migrator.zip"
  name "JamfMigrator"
  desc "Tool to migrate data granularly between Jamf Pro servers"
  homepage "https://github.com/jamf/JamfMigrator"

  depends_on macos: ">= :high_sierra"

  app "jamf-migrator.app"
end
