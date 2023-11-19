cask "cloudnet" do
  version "1.36.2.12"
  sha256 "b97a73bce260af35dc7674a225549d24d290d76a1d1c4b450263d063ee3259fa"

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
