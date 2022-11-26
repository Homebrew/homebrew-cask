cask "chronycontrol" do
  version "1.4.7,282"
  sha256 "3e26f7dbafd1a8d572ea2be37212f0ca4be0121847ec56981cb7323b26da93d5"

  url "https://www.whatroute.net/software/chronycontrol-#{version.csv.first}.zip"
  name "ChronyControl"
  desc "Install and configure chronyd"
  homepage "https://whatroute.net/chronycontrol.html"

  livecheck do
    url "https://www.whatroute.net/chronycontrolappcast.xml"
    strategy :sparkle
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
