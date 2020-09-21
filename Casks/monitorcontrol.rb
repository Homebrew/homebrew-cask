cask "monitorcontrol" do
  version "2.1.0"
  sha256 "c02a1a96a002a3e9f1072e3924ea66226233a227b5c971d617b3ef4f12acf206"

  url "https://github.com/the0neyouseek/MonitorControl/releases/download/v#{version}/MonitorControl.#{version}.dmg"
  appcast "https://github.com/the0neyouseek/MonitorControl/releases.atom"
  name "MonitorControl"
  desc "Tool to control external monitor brightness & volume"
  homepage "https://github.com/the0neyouseek/MonitorControl"

  depends_on macos: ">= :sierra"

  app "MonitorControl.app"
end
