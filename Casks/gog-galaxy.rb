cask "gog-galaxy" do
  version "2.0.43.66"
  sha256 "6de8e5f8f14a2d51898d5add47c1c72bd54e8d2ed54809d027c4fd9837529183"

  url "https://cdn.gog.com/open/galaxy/client/#{version}/galaxy_client_#{version}.pkg"
  name "GOG Galaxy"
  desc "Game client"
  homepage "https://www.gog.com/galaxy"

  livecheck do
    url "https://gog.com/galaxy"
    regex(%r{href=.*?/galaxy_client_(\d+(?:\.\d+)*)a.pkg}i)
  end

  auto_updates true

  pkg "galaxy_client_#{version}.pkg"

  uninstall delete:    "/Applications/GOG Galaxy.app",
            launchctl: [
              "com.gog.galaxy.ClientService",
              "com.gog.galaxy.commservice",
              "com.gog.galaxy.autoLauncher",
            ]

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
