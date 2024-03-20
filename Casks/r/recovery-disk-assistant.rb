cask "recovery-disk-assistant" do
  version "1.0,18"
  sha256 :no_check

  url "https://download.info.apple.com/Mac_OS_X/041-2001.20110808.QFC1d/RecoveryDiskAssistant.dmg"
  name "Recovery Disk Assistant"
  homepage "https://support.apple.com/kb/DL1433"

  deprecate! date: "2024-03-20", because: :unmaintained

  app "Recovery Disk Assistant.app"
end
