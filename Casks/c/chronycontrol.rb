cask "chronycontrol" do
  version "1.4.13"
  sha256 "35c44a01c9d1364301a27023507717c09621b5858c62e25a62c1d31ff4af3090"

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
