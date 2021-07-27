cask "monitorcontrol" do
  version "2.2.0"
  sha256 "02e029ad8e799fb3b1a1fe036fd309058bcaabddb94c5fb6859714cdbf78d868"

  url "https://github.com/the0neyouseek/MonitorControl/releases/download/v#{version}/MonitorControl.#{version}.dmg"
  name "MonitorControl"
  desc "Tool to control external monitor brightness & volume"
  homepage "https://github.com/the0neyouseek/MonitorControl"

  depends_on macos: ">= :sierra"

  app "MonitorControl.app"
end
