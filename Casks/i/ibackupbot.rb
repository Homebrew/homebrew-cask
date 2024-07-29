cask "ibackupbot" do
  version "5.6.0"
  sha256 :no_check

  url "https://www.icopybot.com/iBackupBot-Setup.dmg"
  name "iBackupBot"
  homepage "https://www.icopybot.com/itunes-backup-manager.htm"

  livecheck do
    url :homepage
    regex(/V\s+(\d+(?:\.\d+)+)/i)
  end

  app "iBackupBot.app"

  caveats do
    requires_rosetta
  end
end
