cask "disablemonitor" do
  version "1.92"
  sha256 "5bdb362d779f7fbb6cf916d7d14545a79206b8158ce5309f2e5bbcb7203651fb"

  url "https://github.com/Eun/DisableMonitor/releases/download/G#{version}/DisableMonitor-G#{version}.zip"
  appcast "https://github.com/Eun/DisableMonitor/releases.atom"
  name "DisableMonitor"
  desc "Tool to enable or disable a monitor"
  homepage "https://github.com/Eun/DisableMonitor"

  app "DisableMonitor.app"
end
