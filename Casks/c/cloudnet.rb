cask "cloudnet" do
  version "1.36.2.0"
  sha256 :no_check

  url "https://pkgs.cloudnet.world/stable/macos/CloudNet.dmg",
      verified: "pkgs.cloudnet.world/stable/macos/"
  name "CloudNet for Mac client"
  desc "Professional and easy-to-use enterprise-level meshVPN product"
  homepage "https://cloudnet.world/"

  # This appcast is slower to update than the submissions we get. See:
  #   https://github.com/Homebrew/homebrew-cask/pull/90907#issuecomment-710107547
  livecheck do
    url "https://pkgs.cloudnet.world/stable/appcast.xml"
    strategy :sparkle, &:version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "CloudNet.app"

  installer script: {
    executable: "/Applications/CloudNet.app/Contents/Resources/cloudnetd.sh",
    args:       ["install"],
    sudo:       true,
  }

  # osascript -e 'id of app "CloudNet"'
  uninstall quit: "world.cloudnet.client",
            launchctl: "world.cloudnet.client.cloudnetd",
            script:    {
              executable: "/Applications/CloudNet.app/Contents/Resources/cloudnetd.sh",
              args:       ["remove"],
              input:      ["Y\n"],
              sudo:       true,
            }

  zap trash: [
    "/Library/LaunchDaemons/world.cloudnet.client.cloudnetd.plist",
    "~/Library/Preferences/world.cloudnet.client.cloudnetd.plist",
    "~/Library/Containers/world.cloudnet.client",
    "~/Library/Group Containers/$(TeamIdentifierPrefix)world.cloudnet.client",
  ]
end
