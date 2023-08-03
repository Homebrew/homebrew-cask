cask "opentabletdriver" do
  version "0.6.2.0"
  sha256 "0808280d2957034177ba24fa758378af4308ddc571b31987aedec6f92c63bee3"

  url "https://github.com/OpenTabletDriver/OpenTabletDriver/releases/download/v#{version}/OpenTabletDriver.osx-x64.tar.gz",
      verified: "github.com/OpenTabletDriver/OpenTabletDriver/"
  name "OpenTabletDriver"
  desc "Is an open source, cross-platform, low latency, user-mode tablet driver"
  homepage "opentabletdriver.net"

  container type: :gzip

  app "OpenTabletDriver.app"

  uninstall quit:      [
              "OpenTabletDriver",
              "OpenTabletDriver.Daemon",
            ],
            launchctl: [
              "application.net.opentabletdriver",
            ]

  zap trash: [
    "~/Library/Saved Application State/net.opentabletdriver.savedState",
  ]
end
