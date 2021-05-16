cask "chronycontrol" do
  version "1.4.2,266"
  sha256 "fb6e42f7d0ed9f2e0d706752f3bd995f7a022a8e0587debf6fcc8f438dc9eafe"

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
