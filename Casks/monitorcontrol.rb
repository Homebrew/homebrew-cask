cask "monitorcontrol" do
  if MacOS.version <= :catalina
    version "3.1.1"
    sha256 "41fa75f378e2a1d0ec0b90fae9cfe4f6859d1628fecf32d23ad7b5447beb78e1"
    livecheck do
      skip "Legacy version for macOS Catalina and older"
    end
  else
    version "4.0.0"
    sha256 "8e71a1f2bcdc2a5e95b22d8f4575032415d46b54ded998728e8fd23963fcc356"
  end

  url "https://github.com/MonitorControl/MonitorControl/releases/download/v#{version}/MonitorControl.#{version}.dmg"
  name "MonitorControl"
  desc "Tool to control external monitor brightness & volume"
  homepage "https://github.com/MonitorControl/MonitorControl"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "MonitorControl.app"

  zap trash: [
    "~/Library/Application Scripts/me.guillaumeb.MonitorControlHelper",
    "~/Library/Containers/me.guillaumeb.MonitorControlHelper",
    "~/Library/Preferences/me.guillaumeb.MonitorControl.plist",
  ]
end
