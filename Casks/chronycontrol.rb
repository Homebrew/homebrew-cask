cask "chronycontrol" do
  version "1.4.6,281"
  sha256 "8a3b340c92d6899b9799f2e212e5fe73f1a4f44bd0828057cebe060f3396b2a5"

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
