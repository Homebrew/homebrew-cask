cask "monitorcontrol" do
  version "3.0.0-rc2"
  sha256 "2f41d28b20411d9b37bb0d07feeb09d78748c267533bd80895bbd300fa5e0eb1"

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
