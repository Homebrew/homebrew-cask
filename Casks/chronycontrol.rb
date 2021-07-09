cask "chronycontrol" do
  version "1.4.4,275"
  sha256 "b80d0f32f645e555bd55728a7c3d9aed8a96eeb36b758e2e9c6eac55cb83ccd1"

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
