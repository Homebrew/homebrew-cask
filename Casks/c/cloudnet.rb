cask "cloudnet" do
  version "1.36.2.23"
  sha256 "a32224547b44e6c0769e3c1bd485d8ef5ad4683c63c9dea44b9b80e8dc33756f"

  url "https://pkgs.cloudnet.world/stable/macos/CloudNet_v#{version}.dmg"
  name "CloudNet for Mac client"
  desc "Enterprise-level meshVPN cloud service"
  homepage "https://cloudnet.world/"

  livecheck do
    url "https://pkgs.cloudnet.world/stable/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

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
    "~/Library/HTTPStorages/world.cloudnet.client",
    "~/Library/Preferences/world.cloudnet.client.cloudnetd.plist",
    "~/Library/Preferences/world.cloudnet.client.plist",
  ]
end
