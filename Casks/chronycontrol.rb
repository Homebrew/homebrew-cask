cask "chronycontrol" do
  version "1.4.0"
  sha256 "6a82467ea3505f1fa223d672cb5f59b7a4c50507a89d83fb2a6dd00380a77866"

  url "https://www.whatroute.net/software/chronycontrol-#{version}.zip"
  appcast "https://www.whatroute.net/chronycontrolappcast.xml"
  name "ChronyControl"
  homepage "https://whatroute.net/chronycontrol.html"

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
