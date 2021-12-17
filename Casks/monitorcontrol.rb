cask "monitorcontrol" do
  if MacOS.version <= :high_sierra
    version "2.1.0"
    sha256 "c02a1a96a002a3e9f1072e3924ea66226233a227b5c971d617b3ef4f12acf206"

    livecheck do
      skip "Legacy version for Sierra and High Sierra"
    end
  elsif MacOS.version <= :mojave
    version "3.1.1"
    sha256 "41fa75f378e2a1d0ec0b90fae9cfe4f6859d1628fecf32d23ad7b5447beb78e1"

    livecheck do
      skip "Legacy version for Mojave"
    end
  else
    version "4.0.2"
    sha256 "80134288fda24528f27534d346ab850803cc67ef431623bd86518cbde151272c"
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
