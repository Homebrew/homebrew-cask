cask "chronycontrol" do
  version "1.4.14"
  sha256 "f1bba1ff8e75753b528326d43f10d0f9278a447b40aa7fbd84731df5de8ab8f5"

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
