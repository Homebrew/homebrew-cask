cask "chronycontrol" do
  version "1.4.5,278"
  sha256 "c100561a76336eef7607310b15b75ac377796be3175c2e4ddf1d66289212ac9b"

  url "https://www.whatroute.net/software/chronycontrol-#{version.csv.first}.zip"
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
