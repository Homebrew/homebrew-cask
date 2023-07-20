cask "pulseview" do
  version "0.4.2"

  url "https://sigrok.org/download/binary/pulseview/PulseView-#{version}.dmg"
  name "PulseView"
  desc "Qt based logic analyzer, oscilloscope and MSO GUI for sigrok"
  homepage "https://sigrok.org/wiki/PulseView"

  app "PulseView.app"
end
