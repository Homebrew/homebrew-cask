cask "chronycontrol" do
  version "1.4.3,270"
  sha256 "63e13bbff5ec66adf647fc08e2c35e36d5d42d948f7f6944cf74eb7dc2c1dbfa"

  url "https://www.whatroute.net/software/chronycontrol-#{version.before_comma}.zip"
  name "ChronyControl"
  desc "Install and configure chronyd"
  homepage "https://whatroute.net/chronycontrol.html"

  livecheck do
    url "https://www.whatroute.net/chronycontrolappcast.xml"
    strategy :sparkle
  end

  app "ChronyControl.app"

  uninstall launchctl: [
    "org.tuxfamily.chronyd",
    "org.tuxfamily.chronyc",
  ],
            delete:    [
              "/etc/chrony.d",
              "/var/db/chrony",
              "/Library/LaunchDaemons/org.tuxfamily.chronyd",
              "/Library/LaunchDaemons/org.tuxfamily.chronyc",
            ]

  zap trash: "/var/log/chrony"
end
