cask "gog-galaxy" do
  version "2.0.88.15"
  sha256 "b4696443b9596a6f9f65daa6ebd566b462d632c501410200fafe80ffafa4241f"

  url "https://gog-cdn-fastly.gog.com/open/galaxy/client/galaxy_client_#{version}.pkg"
  name "GOG Galaxy"
  desc "Game client"
  homepage "https://www.gog.com/galaxy"

  livecheck do
    url :homepage
    regex(/href=.*?galaxy[._-]client[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  auto_updates true

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

  caveats do
    requires_rosetta
  end
end
