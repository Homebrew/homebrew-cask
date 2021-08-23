cask "monitorcontrol" do
  version "3.0.0-rc1"
  sha256 "2dd6caf8977315ea7d855ba857a62c89475bcec73865f27dc056f62878c4f16a"

  url "https://github.com/MonitorControl/MonitorControl/releases/download/v#{version}/MonitorControl.#{version}.dmg"
  name "MonitorControl"
  desc "Tool to control external monitor brightness & volume"
  homepage "https://github.com/MonitorControl/MonitorControl"

  livecheck do
    url "https://github.com/MonitorControl/MonitorControl/releases/"
    strategy :page_match
    regex(/MonitorControl[._-]?v?(\d+(?:\.\d+)*(?:-rc\d+))/i)
  end

  depends_on macos: ">= :sierra"

  app "MonitorControl.app"

  zap trash: [
    "~/Library/Application Scripts/me.guillaumeb.MonitorControlHelper",
    "~/Library/Containers/me.guillaumeb.MonitorControlHelper",
    "~/Library/Preferences/me.guillaumeb.MonitorControl.plist",
  ]
end
