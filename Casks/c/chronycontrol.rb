cask "chronycontrol" do
  version "1.4.12"
  sha256 "b736f18ee0ad39c6f364590620a76f4e700c543311a112b098a0260841903fed"

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
