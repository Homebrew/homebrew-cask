cask "jamf-migrator" do
  version "6.2.6"
  sha256 :no_check

  url "https://github.com/jamf/JamfMigrator/releases/latest/download/jamf-migrator.zip"
  name "JamfMigrator"
  desc "Tool to migrate data granularly between Jamf Pro servers"
  homepage "https://github.com/jamf/JamfMigrator"

  livecheck do
    url :url
    strategy :github_latest
    regex(/jamf-migrator\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  app "jamf-migrator.app"
end
