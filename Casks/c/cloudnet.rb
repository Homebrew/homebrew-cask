cask "cloudnet" do
  version "1.36.2.8"
  sha256 "106f78cd40c03c8d94056bbc98378bebc7249f0bb9f876e3049f8376ad2f6e84"

  url "https://pkgs.cloudnet.world/stable/macos/CloudNet_v#{version}.dmg"
  name "CloudNet for Mac client"
  desc "Enterprise-level meshVPN cloud service"
  homepage "https://cloudnet.world/"

  livecheck do
    url "https://pkgs.cloudnet.world/stable/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "CloudNet.app"
  installer script: {
    executable: "CloudNet.app/Contents/Resources/cnet",
    args:       ["install"],
    sudo:       true,
  }

  uninstall quit:      "world.cloudnet.client",
            launchctl: "world.cloudnet.client.cloudnetd",
            script:    {
              executable: "CloudNet.app/Contents/Resources/cnet",
              args:       ["uninstall"],
              sudo:       true,
            },
            delete:    [
              "/Applications/CloudNet.app",
              "/Library/LaunchDaemons/world.cloudnet.client.cloudnetd.plist",
            ]

  zap trash: [
    "~/Library/Containers/world.cloudnet.client",
    "~/Library/Group Containers/$(TeamIdentifierPrefix)world.cloudnet.client",
    "~/Library/Preferences/world.cloudnet.client.cloudnetd.plist",
  ]
end
