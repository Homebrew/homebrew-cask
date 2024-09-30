cask "ibackupbot" do
  version "5.6.0"
  sha256 :no_check

  url "https://www.icopybot.com/iBackupBot-Setup.dmg"
  name "iBackupBot"
  desc "Backup manager for iTunes"
  homepage "https://www.icopybot.com/itunes-backup-manager.htm"

  deprecate! date: "2024-09-30", because: :unmaintained

  app "iBackupBot.app"

  caveats do
    requires_rosetta
  end
end
