cask "chronycontrol" do
  version "1.4.9"
  sha256 "d014e113250bbef1141100752c3d7e3692b2ddce8ca8fa1c03d73f5005a14d3d"

  url "https://www.whatroute.net/software/chronycontrol-#{version}.zip"
  name "ChronyControl"
  desc "Install and configure chronyd"
  homepage "https://whatroute.net/chronycontrol.html"

  livecheck do
    url "https://www.whatroute.net/chronycontrolappcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "ChronyControl.app"

  uninstall launchctl: [
              "org.tuxfamily.chronyc",
              "org.tuxfamily.chronyd",
            ],
            delete:    [
              "/Library/LaunchDaemons/org.tuxfamily.chronyc",
              "/Library/LaunchDaemons/org.tuxfamily.chronyd",
              "/var/db/chrony",
            ]

  zap trash: [
    "/etc/chrony.d",
    "/var/log/chrony",
  ]
end
