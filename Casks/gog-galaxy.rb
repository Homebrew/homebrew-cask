cask "gog-galaxy" do
  version "2.0.62.26"
  sha256 "25ac56aee04c835c9fd0c17ecedc43680d4eeb0a8d9c0e313c69ad027a322f4d"

  url "https://cdn.gog.com/open/galaxy/client/#{version.chomp("a")}/galaxy_client_#{version}.pkg"
  name "GOG Galaxy"
  desc "Game client"
  homepage "https://www.gog.com/galaxy"

  livecheck do
    url :homepage
    regex(%r{href=.*?/galaxy_client_(\d+(?:\.\d+)*a?)\.pkg}i)
  end

  auto_updates true

  pkg "galaxy_client_#{version}.pkg"

  uninstall delete:    "/Applications/GOG Galaxy.app",
            launchctl: [
              "com.gog.galaxy.autoLauncher",
              "com.gog.galaxy.ClientService",
              "com.gog.galaxy.commservice",
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
