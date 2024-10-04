cask "monitorcontrol" do
  on_high_sierra :or_older do
    version "2.1.0"
    sha256 "c02a1a96a002a3e9f1072e3924ea66226233a227b5c971d617b3ef4f12acf206"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave do
    version "3.1.1"
    sha256 "41fa75f378e2a1d0ec0b90fae9cfe4f6859d1628fecf32d23ad7b5447beb78e1"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina :or_newer do
    version "4.3.3"
    sha256 "9b2c7769da14dc5618aece8b1514a25edc12b286ae8e343f3d880017f5ee9368"
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
