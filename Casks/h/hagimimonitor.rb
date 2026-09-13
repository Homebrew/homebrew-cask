cask "hagimimonitor" do
  version "1.5.6"
  sha256 "356ae0ab61892f2c87b7569124fe8f818f312e143775adf4c02e4696d9665290"

  url "https://github.com/Acerola-1/hagimi-monitor/releases/download/v#{version}/HagimiMonitor.dmg"
  name "HagimiMonitor"
  desc "Menu bar monitor for system performance and hardware"
  homepage "https://github.com/Acerola-1/hagimi-monitor"

  auto_updates true
  depends_on macos: :sequoia

  app "HagimiMonitorDirect.app"
end
