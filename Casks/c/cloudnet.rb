cask "cloudnet" do
  version "1.36.2.20"
  sha256 "77a03c7b5114b364ce51e3c3ec72aae3aa8cddb6357ba7c80b5ea1cca8f2b1a4"

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

  uninstall launchctl: "world.cloudnet.client.cloudnetd",
            quit:      "world.cloudnet.client",
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
