cask "gog-galaxy" do
  on_arm do
    version "2.1.7.22"
    sha256 "b672ada25d63574a2221f736c38871c2f7e46a71051c449d4695a7dffc91f8da"

    livecheck do
      url :homepage
      regex(/href=.*?galaxy[._-]client[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
    end
  end
  on_intel do
    version "2.0.100.1"
    sha256 "7485fa4cfbfa97d6a750e9d4c4768063222aeea3208d8dee28264c2c22e2aad6"

    livecheck do
      skip "Legacy version"
    end
  end

  url "https://gog-cdn-fastly.gog.com/open/galaxy/client/galaxy_client_#{version}.pkg"
  name "GOG Galaxy"
  desc "Game client"
  homepage "https://www.gog.com/galaxy"

  auto_updates true
  depends_on macos: :sonoma

  pkg "galaxy_client_#{version}.pkg"

  uninstall launchctl: [
              "com.gog.galaxy.autoLauncher",
              "com.gog.galaxy.ClientService",
              "com.gog.galaxy.commservice",
            ],
            delete:    "/Applications/GOG Galaxy.app"

  zap trash: [
    "/Library/LaunchDaemons/com.gog.galaxy.ClientService.plist",
    "/Library/PrivilegedHelperTools/com.gog.galaxy.ClientService",
    "/Users/Shared/GOG.com",
    "~/Library/Application Support/GOG.com",
    "~/Library/Preferences/com.gog.galaxy.cef.renderer.plist",
    "~/Library/Preferences/com.gog.galaxy.plist",
    "~/Library/Saved Application State/com.gog.galaxy.savedState",
  ]
end
