cask "jamf-migrator" do
  version "7.1.0"
  sha256 "199e2c61186426f9d8c183e605d17b2cb17bcaaba5b812b43a42aa5806bcef31"

  url "https://github.com/jamf/JamfMigrator/releases/download/v#{version}/jamf-migrator.zip"
  name "JamfMigrator"
  desc "Tool to migrate data granularly between Jamf Pro servers"
  homepage "https://github.com/jamf/JamfMigrator"

  depends_on macos: ">= :high_sierra"

  app "jamf-migrator.app"
end
